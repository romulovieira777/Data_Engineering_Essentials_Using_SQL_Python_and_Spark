/*
    Overview of PgAdmin

    This script provides an overview of the tables created in the PostgreSQL database
    for the application. It includes queries to view the structure and sample data
    from the tables.
    Author: Romulo Vieira
    Date: 2025-09-02
*/

-- See the first 10 rows of the orders tables
SELECT
    *
FROM
    orders
LIMIT 10;


-- See the first 10 rows of the order_items tables
SELECT
    *
FROM
    order_items
LIMIT 10;