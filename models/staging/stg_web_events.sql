select
    *
from {{ source('ecommerce', 'web_events') }}