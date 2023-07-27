SELECT trackid, name, albumid, mediatypeid, genreid, milliseconds, bytes
FROM {{ source("chinook_data", "tracks") }}
WHERE milliseconds >= 180000 AND milliseconds <= 240000 AND bytes = 6600000