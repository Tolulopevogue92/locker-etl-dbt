select
    cast(event_timestamp as date) as event_date,
    locker_id,
    locker_location_name,
    count(*) as total_events,
    count(distinct customer_id) as unique_customers,
    count(distinct order_id) as unique_orders
from {{ ref('stg_amazon_locker') }}
group by 1,2,3