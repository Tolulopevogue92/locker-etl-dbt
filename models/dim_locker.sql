select
    locker_id,
    locker_location_name,
    count(*) as total_events,
    count(distinct customer_id) as unique_customers
from {{ ref('stg_amazon_locker') }}
group by 1,2