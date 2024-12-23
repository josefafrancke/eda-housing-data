# ds-eda-project
This repo contains an exploratory data analysis (EDA) on King County Housing Data.
This project is the first formal portfolio project performed in the course of the Spiced Data Science bootcamp.

## Contents
* housing_project_ipynb: jupyter notebook containing the code for the eda
* eda_presentation.pdf: pdf of the presentation with client information & summing up the most important results and recommendations
* housing_exploration.sql: SQL code to join database tables as basis for EDA
* column_names: data feature definitions
* requirements.txt: list of packages & dependencies needed to execute EDA code
* directory project_instructions: containing Spiced instructions, tutorials & templates that the project was based on

## Requirements

- pyenv
- python==3.11.3

See also the requirements.txt file


## Setup

    pyenv local 3.11.3
    python -m venv .venv
    source .venv/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt

Then run jupyter lab to view eda code