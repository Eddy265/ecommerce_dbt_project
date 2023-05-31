select
    *
from {{ source('ecommerce', 'PRODUCT_DETAILED') }}