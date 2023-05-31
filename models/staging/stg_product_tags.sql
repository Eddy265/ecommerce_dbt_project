select
    *
from {{ source('ecommerce', 'PRODUCT_TAGS') }}