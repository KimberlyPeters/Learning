# Welcome to My Select Query
***

## Task

The problem is to implement a class called MySelectQuery that can perform SQL-like queries on CSV data. The challenge lies in parsing the CSV content, storing it in a suitable data structure, and implementing a query method to filter the data based on column name and criteria.

## Description

I have solved the problem by creating a Ruby class called MySelectQuery. The class has a constructor that takes the CSV content as a string. It parses the CSV content, extracts the column names, and stores the data rows in a nested array structure. Additionally, I have implemented a where method that accepts a column name and criteria as arguments and filters the data based on the given criteria.

## Installation

There was no installation necessary for this task 

## Usage

Create an instance of the MySelectQuery class by calling the constructor and passing the CSV content as a string.
Use the where method to perform queries on the CSV data. Provide the column name and the criteria to filter the data.
The where method will return an array of strings, where each string represents a row in the CSV data that matches the given criteria.
