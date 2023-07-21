select
    *
from {{ source('ecommerce', 'accounts') }}