from os import listdir
from os.path import isfile, join
from datetime import datetime
from dateutil.parser import parse

import re
#import sys
import pandas as pd
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

def process(file):
    # Read csv as Pandas Dataframe
    df = pd.read_csv(dataPath+file)
    # derive an age col
    df['age'] = calculate_age(df.iloc[0]['date_of_birth'])
    # drive an mob num count col
    df['mob_num_cnt'] = count_mobile_number(df.iloc[0]['mobile_no'])
    # derive valid_email col
    df['valid_email'] = is_email_valid(df.iloc[0]['email'])

    # derive app_status col
    df['application_status'] = application_status(df.iloc[0]['age','mob_num_cnt','valid_email'])

    # Split rows based on application status
    df_successful = df[df['application_status'] >= 1]
    df_unsuccessful = df[df['application_status'] < 1]

def application_status():

    return true

def is_email_valid(email):
    # Do a left/right trim and remove blankspaces. It is uncommon to have blankspaces in email.
    email = email.strip().replace(" ", "")
    # A primitive approach to check whether email ends with either .com or .net
    pattern = r"[^@]+@[^@]+\.[com|net]+"

    if not re.fullmatch(pattern, email):
        return 0 # Not valid email
    else:
        return 1 # Valid email

def count_mobile_number(mobile_num):
    # Left/right trim and remove blankspaces.
    # I should probably do this on the Dataframe first.
    mobile_num = mobile_num.strip().replace(" ", "")

    cnt = len(mobile_num)
    return cnt

def calculate_age(birthday):
    # Since the date format is inconsistent, I used open-source lib to convert to standard datetime obj
    birthday = parse(birthday)
    # Set the cutoff date to 01 Jan 2022 to calculate age
    cutoff = datetime.strptime('20220101', '%Y%m%d').date()

    return cutoff.year - birthday.year - ((cutoff.month, cutoff.day) < (birthday.month, birthday.day))

def main():
    files = list_dir()
    for file in files:
        process(file)

if __name__ == '__main__':
    main()
