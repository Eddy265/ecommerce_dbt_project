
select
    id as order_id,
    account_id,
    occurred_at,
    standard_qty,
    gloss_qty,
    poster_qty,
    total as total_qty,
    standard_amt_usd,
    gloss_amt_usd,
    poster_amt_usd,
    total_amt_usd
from {{ source('ecommerce', 'orders') }}
