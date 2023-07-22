select
    id as web_event_id,
    account_id,
    occurred_at::date AS occurred_date,
    channel
from {{ source('ecommerce', 'web_events') }}