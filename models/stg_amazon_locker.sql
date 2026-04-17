with source as (

select *
from LOCKER_DB.RAW.RAW_AMAZON_LOCKER_EVENTS

),

cleaned as (

select
event_id,
event_timestamp,
order_id,
package_id,
customer_id,
locker_id,
locker_location_name,
locker_size,
source_file_name,
load_timestamp
from source

)

select * from cleaned