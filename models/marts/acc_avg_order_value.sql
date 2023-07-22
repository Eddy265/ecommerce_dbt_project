
WITH orders as (
select
    *
from {{ref ("stg_orders") }}),

accounts AS (
    select
    *
from {{ref ("stg_accounts")}}),

acc_avg_order AS (
    SELECT 
    account_name,
    ROUND(AVG(o.total_amt_usd),2) AS avg_order_value,
    COUNT(*) AS avg_order_COUNT
FROM orders o
INNER JOIN accounts a ON o.account_id = a.account_id
GROUP BY account_name
ORDER BY avg_order_value DESC
)

SELECT * FROM acc_avg_order