with data_source as (
    select * from {{ source("chinook_data", "tracks") }}
)

select * from data_source