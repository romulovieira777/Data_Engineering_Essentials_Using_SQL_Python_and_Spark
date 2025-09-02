/*
    This script demonstrates basic SQL queries for selecting and aggregating data from the 'orders' and 'order_items'
    tables, including selecting all or specific columns, using DISTINCT, ordering results, counting, summing, and
    filtering with WHERE.

    Author: Romulo Vieira
    Date: 2025-09-02
*/

-- 1. Select all columns from the 'orders' table
SELECT
    *
FROM
    orders;


-- 2. Select specific columns (order_id, customer_id, order_date) from the 'orders' table
SELECT
    *
FROM
    order_items;


-- 3. Select distinct values from the 'order_status' column in the 'orders' table
SELECT
    COUNT(DISTINCT orders.order_status) AS unique_order_status_count
FROM
    orders;


-- 4. Order the results by 'order_date' in descending order
SELECT
    COUNT(DISTINCT orders.order_date) AS unique_order_date_count
FROM
    orders;


-- 5. Select rows from the table order_items.
SELECT
    *
FROM
    order_items;


-- 6. Filter rows where order_item_order_id is equal to 2
SELECT
    SUM(order_item_subtotal) AS total_revenue
FROM
    order_items
WHERE
    order_item_order_id = 2;