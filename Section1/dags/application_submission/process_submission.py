from os import listdir
from os.path import isfile, join
from datetime import datetime
from dateutil.parser import parse
from nameparser import HumanName

import re
#import sys
import pandas as pd
import numpy as np
import logging

# Initialize data paths
dataPath = '/opt/airflow/data/submissions/'
successPath = '/opt/airflow/data/successful/'
unsuccessPath = '/opt/airflow/data/unsuccessful/'
archivePath = '/opt/airflow/data/archived_submissions/'

# Setup daily log file for this Task
logging.basicConfig(filename="/opt/airflow/logs/application_submission_dag/process_submission_"+datetime.today().strftime('%Y%m%d')+".log",
                        format='%(asctime)s %(levelname)s %(message)s',
                        filemode='a')

logger = logging.getLogger()

logger.setLevel(logging.INFO)


def list_dir():
    # Save file-only names into a list
    files = [f for f in listdir(dataPath) if isfile(join(dataPath, f))]
    
    # Log number of files to be processed
    logger.info("Number of files found: " + str(len(files)))

    return files

def process_application(file):
    # Read csv as Pandas Dataframe
    df = pd.read_csv(dataPath+file)

    # To determine an application is successful or not based on the following criteria:
    # 1. Name is not empty
    # 2. Mobile number has 8 digits
    # 3. Application >18 y/o as of 1 Jan 2022
    # 4. Has valid email that ends with .com or .net

    # derive has_name col for later use.
    df['has_name'] = df['name'].apply(lambda x: check_name(x))

    # derive first and last name col
    df[['firstname', 'lastname']] = df['name'].apply(lambda x: pd.Series(split_name(x)))

    # derive mobile number count col for later use.
    df['mobile_num_count'] = df['mobile_no'].apply(lambda x: check_mobile_number(x))
    
    # derive age and above_18 col
    df[['age','above_18']] = df['date_of_birth'].apply(lambda x: pd.Series(check_age(x)))

    # derive valid_email col
    #df['valid_email'] = check_email(df.iloc[0]['email'])
    df['valid_email'] = df['email'].apply(lambda x: check_email(x))

    # derive app_status col
    #df['application_status'] = application_status(df)
    df['application_status'] = df.apply(application_status(df))


    # Split rows using application status
    # Todo: Log the count of each results
    df_successful = df[df['application_status'] == 1]
    df_unsuccessful = df[df['application_status'] == 0]

    # Save both output datasets into respective folders
    df_successful.to_csv(successPath+"successful_"+file, index=False)
    df_unsuccessful.to_csv(unsuccessPath+"unsuccessful_"+file, index=False)

def application_status(df):
    #if df['age'] > 18 & df['valid_email'] == 1 & df['mobile_num_count'] == 8:
    if (df['has_name']) & (df['mobile_num_count'] == 8) & (df['above_18']) & (df['valid_email']) :
        #logger.info("Successful.")
        return 1
    else:
        #logger.info("Unsuccessful.")
        return 0

def check_name(name):
    # 1. Check Name is empty.
    if name == "":
        return False
    else:
        return True

def split_name(name):
    # I am using a 3rd party lib nameparser to parse first and last name effortlessly
    # to avoid maintaining a custom list of titles,suffix or nickname.
    # The logic is based on positions, not semantic. Hence, it is not garunteed to be 100% correct.
    fullname = HumanName(name)

    return [fullname.first, fullname.last]

def check_mobile_number(mobile_num):
    # Left/right trim and remove blankspaces.
    mobile_num = mobile_num.strip().replace(" ", "")

    cnt = len(mobile_num)

    return cnt

def check_age(birthday):
    # Since the date format is inconsistent, I used a 3rd party lib 
    # to parse and convert to a standard datetime obj.
    try:
        birthday = parse(birthday)
    except:
        birthday = datetime.strptime('20220101', '%Y%m%d').date()
        logger.error("This date causes error: "+str(birthday))
        pass

    # Set the cutoff date to 01 Jan 2022 to calculate age
    cutoff = datetime.strptime('20220101', '%Y%m%d').date()

    # Calculate age, accounting for month and day.
    # If applicant birthday month and day is later than cutoff month and day,
    # ((cutoff.month, cutoff.day) < (birthday.month, birthday.day)) will resolve to 1
    age = cutoff.year - birthday.year - ((cutoff.month, cutoff.day) < (birthday.month, birthday.day))

    if age > 18:
        above18 = True
    else:
        above18 = False

    return [age, above18]

def check_email(email):
    # Do a left/right trim and remove blankspaces.
    email = email.strip().replace(" ", "")

    # Using regex to check if email ends with either .com or .net
    pattern = r"[^@]+@[^@]+\.[com|net]+"

    if not re.fullmatch(pattern, email):
        return False # Not valid email
    else:
        return True # Valid email

def main():

    # Get application submission files
    files = list_dir()
    # Loop files
    for file in files:
        process_application(file)

if __name__ == '__main__':
    main()
