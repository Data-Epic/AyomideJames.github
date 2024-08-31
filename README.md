# Brazilian Customers Orders ETL Pipeline and API
This project creates an ETL (Extract, Transform, Load) workflow for Olist's Brazilian E-Commerce Public Dataset. It employs Polars for data manipulation and DuckDB as the target data store. The complete process—including data intake scripts, unit tests, and the DuckDB database—is packaged in Docker containers to facilitate deployment and scaling. The Docker setup is engineered to extract the data and offer a command-line interface (CLI) for running queries against the data using DuckDB, After all this a Flask api code  is then used to load,retreive and transform the data ingested in a json format with swagger UI. the port is 7000 and debugging was set false.

## Features

- Harvesting data from various CSV files within the Olist dataset
- Reshaping and structuring data to form dimensional and fact tables
- Conducting sophisticated data analysis to produce informative summary tables
- Populating a DuckDB database with the processed data
- Implementing thorough unit testing for data preparation and database functions
- Encapsulating the entire ETL workflow in Docker for consistency and easy deployment
- Creating a Flask API that helps load, retrieve and process Data.
- Deployment to an AWS EC2 instance

# Prerequisites

- DOCKER AND DOCKER COMPOSE
- GIT AND GIT ACTION
- FLASK
- SWAGGER UI
- AWS EC2 INSTANCE 

Output Tables
The pipeline generates the following analytical and aggregate tables in DuckDB and then displays them with the Swagger UI.
fact_table
top_sellers 

A ci-cd pipeline was then developed, pushed to docker hub, and then deployed to an EC2 instance.



## Project Structure

customer_orders_analysis/
├── data/
│   └── orders.csv
├── src/
│   ├── __init__.py
│   ├── database.py
│   ├── processing.py
│   ├── api.py
│   └── main.py
├── tests/
│   ├── __init__.py
│   ├── test_database.py
│   ├── test_processing.py
│   └── test_api.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── .github/
│   └── workflows/
│       └── ci-cd.yml
└── README.md

### the dataset can be downloaded from the link https://www.google.com/url?q=https%3A%2F%2Fdrive.google.com%2Ffile%2Fd%2F1cChArUyIs9Mnr4rikM8eZbeEdTW3X4-O%2Fview%3Fusp%3Ddrive_link



