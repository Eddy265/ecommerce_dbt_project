select
    *
from {{ source('ecommerce', 'region') }}