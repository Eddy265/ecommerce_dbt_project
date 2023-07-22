-- Create a new column "order_category" in the "orders" table based on the order total.

WITH category AS (
SELECT
    order_id,
    total_qty,
    total_amt_usd,
    CASE
        WHEN total_amt_usd <= 100 THEN 'Low Value'
        WHEN total_amt_usd > 100 AND total_amt_usd <= 500 THEN 'Medium Value'
        ELSE 'High Value'
    END AS order_category
FROM
    {{ref ('stg_orders')}})
    
    SELECT * FROM category

