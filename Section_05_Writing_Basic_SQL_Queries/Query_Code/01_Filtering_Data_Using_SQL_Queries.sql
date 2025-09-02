/*
    This script demonstrates basic SQL queries for filtering data from the 'orders' table,
    including selecting all columns, selecting specific columns, using DISTINCT,
    ordering results, and filtering with WHERE and multiple conditions and IN operator.

    Author: Romulo Vieira
    Date: 2025-09-02
*/

-- Example 1: Basic SELECT query to retrieve all columns from the 'orders' table
SELECT
    *
FROM
    orders;


-- Example 2: SELECT query to retrieve specific columns from the 'orders' table
SELECT
    DISTINCT order_status
FROM
    orders;


-- Example 3: SELECT query with filtering using WHERE clause
SELECT
    DISTINCT order_status
FROM
    orders
ORDER BY
    order_status ASC;


-- Example 4: SELECT query with filtering using WHERE clause
SELECT
    *
FROM
    orders
WHERE
    order_status = 'COMPLETE';


-- Example 5: SELECT query with filtering using WHERE clause
SELECT
    *
FROM
    orders
WHERE
    order_status = 'CLOSED';


-- Example 6: SELECT query with filtering using WHERE clause and multiple conditions
SELECT
    *
FROM
    orders
WHERE
    order_status = 'COMPLETE' OR order_status = 'CLOSED';


-- Example 7: SELECT query with filtering using WHERE clause and IN operator
SELECT
    *
FROM
    orders
WHERE
    order_status IN ('COMPLETE', 'CLOSED');