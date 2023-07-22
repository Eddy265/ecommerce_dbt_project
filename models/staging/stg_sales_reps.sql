
select
    id as sales_rep_id, 
    name as sales_rep_name,
    region_id
from {{ source('ecommerce', 'sales_reps') }}