# DETechAssessment-cjx

This repository is split into 5 sections

1. **data pipelines**
2. **databases**
3. **system design**
4. **charts & APIs**
5. **machine learning**

## Section 1: Data Pipelines

### Time spent
Approximately 11 hours.

### What I've done
1. Used a high level DAG file to run my Tasks written in Python via BashOperator
2. Written a custom application log for troubleshooting purposes.
3. Moving the submission files to archive folder for reconciliation.
4. As much as possible, write functions to encapsulate each ETL regardless how trivial, because it would be easier to maintain
5. When possible, I opted for boolean/integer because it is faster when using them to compare/filter.
6. Created temp columns and dropped them before saving.

### What to improve on
1. Separate my functions into various files and import them in my main script.
2. Add more try blocks and logging in my functions

### How to setup on your local machine

1. Download the entire repo to your computer
2. Install the latest version of Docker Desktop
3. Open your terminal and navigate to ./Section1
4. run this command, docker-compose up airflow-init
5. run this command, docker-compose up -d
6. Open a browser and navigate to this URL, localhost:8080
7. Enter 'airflow' for both user id and password
8. click on 'application_submission_dag'
9. click the run button on the top-right of the screen

## Section 2: Databases

### Time spent
Approximately 3 hours

### What I've done
1. Created a docker-compose.yaml to bring up a postgresql database
2. Created a init.sql to create new database and tables
3. Modified docker-compose.yaml to copy init.sql into /docker-entrypoint-initdb.d
4. Created a ER Diagram, er-diagram.png to visualize the database design

### What to improve on
1. Include the datatypes of each attribute
2. Furnish more details in Receipt table. For example, datetime, taxable amount, total payable.

### How to setup on your local machine
1. Dowload the entire repo to your computer
2. Install the latest version of Docker Desktop
3. Open your terminal and navigate to ./Section2
4. run this command, docker-compose up -d
5. Open a browser and navigate to this URL, localhost:8080
6. Enter 'postgres' for user, 'example' for password
7. 