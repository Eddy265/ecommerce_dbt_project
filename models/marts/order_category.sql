
--{{ config(materialized='table') }}

WITH order_category AS (
    SELECT
    ORDER_id,
    order_category
    FROM {{ref ("int_order_category")}}),

count_category AS (
    SELECT 
    order_category,
    COUNT (order_id),
    ROUND((COUNT(order_id) * 100.0 / SUM(COUNT(order_id)) OVER ()),2) || '%' AS order_percentage
    FROM order_category
    group by 1
    order by 2 desc)

SELECT * FROM count_category