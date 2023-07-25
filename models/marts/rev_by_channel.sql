
--{{ config(materialized='table') }}

WITH orders as (
select
    *
from {{ref ("stg_orders") }}),

accounts AS (
    select
    *
from {{ref ("stg_accounts")}}),

web_events AS (
    SELECT 
    *
    FROM {{ref ("stg_web_events")}}),

rev_web_events AS (
    SELECT channel,
    SUM(total_amt_usd) AS total_amt_usd
    from accounts a 
    JOIN orders o on a.account_id = o.account_id
    JOIN web_events w on a.account_id = w.account_id
    GROUP BY 1
    ORDER BY 2 desc
)

SELECT * FROM rev_web_events