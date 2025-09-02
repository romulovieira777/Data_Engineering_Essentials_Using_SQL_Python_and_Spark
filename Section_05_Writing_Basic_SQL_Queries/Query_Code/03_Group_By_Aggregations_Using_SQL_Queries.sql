/*
    This script demonstrates basic SQL queries for selecting and aggregating data from the `orders` and `order_items`
    tables,     including selecting all or specific columns, using DISTINCT, ordering results, counting, summing, and
    filtering with WHERE.

    Author: Romulo Vieira
    Date: 2025-09-02
*/

-- Select all columns from the orders table
SELECT
    *
FROM
    orders;


-- Select specific columns from the orders table and order by order_date descending
SELECT
    order_status
  , COUNT(*) AS total_orders
FROM
    orders
GROUP BY
    order_status
ORDER BY
    total_orders DESC;


-- Select distinct order statuses from the orders table and order by order_date descending
SELECT
    order_date
  , COUNT(*) AS total_orders
FROM
    orders
GROUP BY
    order_date
ORDER BY
    total_orders DESC;


-- Aggregate functions: COUNT with clause GROUP BY and ORDER BY
SELECT
    TO_CHAR(order_date, 'yyyy-MM') AS order_month
  , COUNT(*) AS total_orders
FROM
    orders
GROUP BY
    order_date
ORDER BY
    total_orders DESC;


-- Select all columns from the order_item table
SELECT
    *
FROM
    order_items;


-- Aggregate functions: SUM with clause GROUP BY and ORDER BY
SELECT
    order_item_order_id
  , SUM(order_item_subtotal) AS order_total
FROM
    order_items
GROUP BY
    order_item_order_id
ORDER BY
    order_item_order_id DESC;


-- Aggregate functions: SUM with clause GROUP BY and ORDER BY
SELECT
    order_item_order_id
  , ROUND(SUM(order_item_subtotal):: NUMERIC, 2) AS order_total
FROM
    order_items
GROUP BY
    order_item_order_id
ORDER BY
    order_item_order_id ASC;