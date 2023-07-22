
select
    id as account_id,
    name as account_name,
    primary_poc,
    sales_rep_id
from {{ source('ecommerce', 'accounts') }}