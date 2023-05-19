from datetime import datetime, timedelta

from airflow import DAG
from airflow.operators.bash import BashOperator


default_args = {
    'owner': 'jxchin',
    'retries': 5,
    'retry_delay':timedelta(minutes=5)
}

with DAG(
    dag_id='application_submission_dag',
    default_args=default_args,
    description='To process application submissions.',
    start_date=datetime(2023, 5, 19),
    schedule_interval='@hourly'
) as dag:

    t1 = BashOperator(
        task_id='process_submission',
        bash_command="python /opt/airflow/dags/application_submission/process_submission.py"
        )
    
    t1