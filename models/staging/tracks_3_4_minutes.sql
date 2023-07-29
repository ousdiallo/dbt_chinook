{{
    config(
        materialized="table",
    )
}}

with
    data_source as (
        select trackid, name, albumid, mediatypeid, genreid, milliseconds, bytes
        from {{ source("chinook_data", "tracks") }}
    ),

    final as (
        select *
        from data_source
        where milliseconds >= 180000 and milliseconds <= 240000 and bytes > 6600000
    )

select *
from final
