select trackid, name, albumid, mediatypeid, genreid, milliseconds, bytes
from {{ source("chinook_data", "tracks") }}
where milliseconds >= 180000 and milliseconds <= 240000 and bytes > 6600000
