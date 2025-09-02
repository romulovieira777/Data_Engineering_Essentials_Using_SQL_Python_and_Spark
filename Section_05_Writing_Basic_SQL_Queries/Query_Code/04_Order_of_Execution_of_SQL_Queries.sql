/*
    This script demonstrates basic SQL queries for selecting and aggregating data from the `orders` table, including
    selecting all or specific columns, using ordering results, counting and filtering with WHERE, GROUP BY, and ORDER BY
    clauses.

    Author: Romulo Vieira
    Date: 2025-09-02
*/

-- Basic structure of a SQL query showing the order of execution
-- Note: This is a template and will not execute as is.
-- It illustrates the order in which SQL clauses are processed.
/*
    SELECT
    FROM
    WHERE
    GROUP BY
    ORDER BY
    HAVING
    LIMIT;
*\

/*
    FROM
    WHERE
    GROUP BY
    SELECT
*/
*/

-- Example 1: Select all columns from the orders table
SELECT
    order_date
  , COUNT(*) AS total_orders
FROM
    orders
WHERE
    order_status IN ('COMPLETE', 'CLOSED')
GROUP BY
    order_date
ORDER BY
    order_date DESC;