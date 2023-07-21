select
    *
from {{ source('ecommerce', 'orders') }}