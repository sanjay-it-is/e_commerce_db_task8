# Task 8: E-commerce Database Stored Procedures and Functions

This repository contains an SQL script (`e_commerce_db_task8.sql`) focused on defining and utilizing reusable SQL code blocks
in the form of stored procedures and functions within your E-commerce PostgreSQL database.


## Objective

The main goal of this task is to gain a clear understanding and hands-on experience in creating and using modular SQL logic effectively by:
* Utilizing the **`CREATE PROCEDURE`** statement to define reusable blocks of SQL code that can perform complex operations.
* Employing the **`CREATE FUNCTION`** statement to define routines that return a value, often used within `SELECT` statements.
* Demonstrating the use of **parameters** in both procedures and functions to allow for dynamic input.
* Incorporating **conditional logic** (e.g., `IF/ELSE`) within these blocks to handle different scenarios.
* Understanding how these constructs contribute to **code reusability, maintainability, and performance optimization**.


## Contents

* `e_commerce_db_task8.sql`: The primary SQL script containing stored procedure and function definitions, along with their usage examples.


## Key Demonstrations

The script illustrates various applications of stored procedures and functions, showcasing their benefits:

* **Stored Procedure for Data Manipulation**: Demonstrates creating a procedure that accepts parameters to modify data in tables
* (e.g., updating product stock) and includes conditional logic (e.g., checking for low stock or invalid operations).
* **Scalar Function for Calculation**: Shows how to create a function that takes input parameters (like `customer_id`)
*  and returns a single calculated value (e.g., a customer's total spending), which can then be used in `SELECT` queries.
* **Parameter Usage**: Highlights how parameters enable dynamic and flexible execution of these reusable blocks.
* **Conditional Logic within Blocks**: Explores implementing `IF` statements or similar constructs to control flow based on specific conditions within the procedure or function.


## How to Use

1.  **Prerequisite**: Ensure your E-commerce database schema and sample data are already set up and populated in your PostgreSQL environment. You should have completed:

      * [Task 1 - Database Setup and Schema Design](https://github.com/sanjay-it-is/e-commerce-db)
      * [Task 2 - Data Insertion and Handling Nulls](https://github.com/sanjay-it-is/e-commerce-db_task2)
      * [Task 3 - Basic SELECT Queries](https://github.com/sanjay-it-is/e-commerce-db_task3)
      * [Task 4 - Aggregate Functions and Grouping](https://github.com/sanjay-it-is/e-commerce-db_task4)
      * [Task 5 - SQL Joins](https://github.com/sanjay-it-is/e-commerce-db_task5)
      * [Task 6 - Subqueries and Nested Queries](https://www.google.com/search?q=https://github.com/sanjay-it-is/e-commerce-db_task6)
      * [Task 7 - Creating Views](https://www.google.com/search?q=https://github.com/sanjay-it-is/e-commerce-db_task7)

2.  **Connect to your Database**: Open your preferred PostgreSQL client (e.g., `psql` command line, pgAdmin, DBeaver).

3.  **Execute the Script**: You can run the `e_commerce_db_task8.sql` file against your `e_commerce_db` database.

    ```bash
    -- Example using psql:
    psql -U your_username -d e_commerce_db -f e_commerce_db_task8.sql
    ```

    Alternatively, you can copy and paste individual queries or the entire script into your client and execute them to see the results.


## 📝 Outcome

By working through this script, you will gain the ability to modularize SQL logic by mastering the creation and utilization of stored procedures 
and functions, enhancing code reusability, maintainability, and efficiency in your E-commerce database.


