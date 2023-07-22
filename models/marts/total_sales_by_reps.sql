
WITH orders as (
select
    *
from {{ref ("stg_orders") }}),

accounts AS (
    select
    *
from {{ref ("stg_accounts")}}),

sales_reps AS (
    select
    *
from {{ref ("stg_sales_reps")}}),

rep_sales AS (
    SELECT sales_rep_name,
    SUM(total_amt_usd) AS total_amt_usd
    from accounts a 
    JOIN orders o on a.account_id = o.account_id
    JOIN sales_reps s on a.sales_rep_id = s.sales_rep_id
    GROUP BY 1
    ORDER BY 2 desc
)

SELECT * FROM rep_sales