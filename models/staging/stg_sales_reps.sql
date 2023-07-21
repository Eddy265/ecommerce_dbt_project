select
    *
from {{ source('ecommerce', 'sales_reps') }}