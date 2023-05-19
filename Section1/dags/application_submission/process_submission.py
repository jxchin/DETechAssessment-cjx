from os import listdir
from os.path import isfile, join
from pathlib import Path
from datetime import datetime

import sys
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
    df = pd.read_csv(dataPath+file)

def isSuccessful():


def main():
    files = list_dir()
    for file in files:
        process(file)

if __name__ == '__main__':
    main()
