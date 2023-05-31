select
    *
from {{ source('ecommerce', 'PRODUCT_SALES_RANK') }}