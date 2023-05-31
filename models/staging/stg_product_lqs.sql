select
    *
from {{ source('ecommerce', 'PRODUCT_LQS') }}