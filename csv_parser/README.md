## Task

The problem revolves around managing and analyzing a dataset of sales from My Online Coffee Shop. The goal is to identify customers who are more likely to buy coffee online. The dataset is provided in CSV format, and it needs to be processed and transformed to extract meaningful information.

## Description

The main challenges in solving this problem are:
1. Parsing and extracting relevant information from the CSV data.
2. Transforming the data into actionable insights.
3. Grouping and aggregating the data based on specific criteria.
4. Ensuring the correctness and efficiency of the data processing.

## Installation

There was no installation necessary for the execution of the tasks in this quest

## Usage

- `my_csv_parser`:
The `my_csv_parser` function is responsible for parsing the CSV data and returning it as a string array. It splits the input string by newlines to extract individual lines, and then splits each line by commas to obtain the values for each column. The function handles any leading or trailing whitespace in the CSV values.

- `my_data_transform`:
The `my_data_transform` function takes the CSV data as input and performs specific transformations on the columns. It replaces the email value with the email provider, converts the age into predefined age groups, and maps the order timestamp to specific time ranges (morning, afternoon, evening) using the `DateTime` object. The function returns an array of strings in CSV format with the transformed column values.

- `my_data_process`:
The `my_data_process` function receives the output of `my_data_transform` as input. It processes the transformed data to group and aggregate the values based on specific columns. The function constructs a Hash of Hash data structure, where each column is a key, and the corresponding values are nested hashes with the values and their occurrences. The function skips unwanted columns (FirstName, LastName, UserName, Coffee Quantity) and counts the occurrences of each value for the remaining columns. The resulting Hash of Hash is then converted to a JSON string.
