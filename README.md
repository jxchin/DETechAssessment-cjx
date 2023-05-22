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
3. Create a function to check and remove special characters from mobile_no, if any.

### How to setup on your local machine

1. Download the entire repo to your computer
2. Install the latest version of Docker Desktop
3. Open your terminal and navigate to ./Section1
4. Run this command, docker-compose up airflow-init
5. Run this command, docker-compose up -d
6. Open a browser and navigate to this URL, localhost:8080
7. Enter 'airflow' for both user id and password
8. Click on 'application_submission_dag'
9. Click the run button on the top-right of the screen

### How to shutdown
1. Run this command, docker-compose down -v

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
2. Include firstname,lastname,above_18 attributes in Member table
3. Include quantity in Product_Sold table
3. Furnish more details in Receipt table. For example, datetime, taxable amount, total payable.

### How to setup on your local machine
1. Dowload the entire repo to your computer
2. Install the latest version of Docker Desktop
3. Open your terminal and navigate to ./Section2
4. run this command, docker-compose up -d
5. Open a browser and navigate to this URL, localhost:8080
6. Select PostgreSQL for System
7. Enter 'postgres' for username
8. Enter 'example' for password
9. Enter 'postgres' for Database
10. Click Login
11. You should see 4 tables. Click each table to see table schema
12. Click 'SQL command' on the left panel
13. Copy the SQL statement from QueryStatement.sql and paste into the textbox
14. Click 'Execute' to run the SQL statement.

### How to shutdown
1. Run this command, docker-compose down -v

## Section 3: System Design

### Time spent
Approximately 2 hours

### What I've done
1. Research on Apache Kafka, Kafka Stream
2. Research on Event Hub's native capability to store records in Storage Account
3. Research on native Data Lifecycle Management capabilities on Azure Cloud Storage

### What to improve on
1. Include network components such as WAF or Firewall.

## Section 4: Charts & APIs

### Time spent
Approximately 2 hours

### What I've done
1. The provided API doesn't work. So I used Covid-19 Weekly Stats dataset from Data.gov.sg (https://data.gov.sg/dataset/covid-19-stats?resource_id=68289dd4-e9d1-41cf-afe6-b093d04b60af)
2. Since the dataset is aggregated and it made the assignment easier, I decided to include a table to show which month had the highest cases
2. Research on various DAX examples to prep my dataset

### What to improve on
1. Overall presentation of the dashboard
2. Using advanced technique to add visual effects to the dashboard

### How to setup on your local machine
1. Dowload the entire repo to your computer
2. Install the latest version of Microsoft Power BI Desktop
3. Launch Power BI Desktop
4. Click File
5. Click Open report
6. Select Covid19 Dashboard.pbix in Section4 folder

## Section 5: Machine Learning

### Time spent
Approximately 4 hours

### What I've done
1. Identified objective to prediction 'buying' value
2. Research on top prediction model. (Gradient boosting, decision tree)
3. Tried Decision Tree and simple hyperparameter tuning
4. Tried XGBoost
5. Tried Azure Machine Learning's AutoML to compare with my accuracy

### What to improve on
1. Need more experience and practice on simple ML
