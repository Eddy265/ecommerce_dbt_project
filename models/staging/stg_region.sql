select
    id as region_id,
    name as region_name
from {{ source('ecommerce', 'region') }}