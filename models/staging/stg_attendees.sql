{{ config(schema='staging') }}
SELECT 
ATTENDEE_ID,
NAME,
EMAIL,
TRIM(address:city,'"') as CITY,
TRIM(address:country,'"') as COUNTRY,
TRIM(address:postal_code,'"') as POSTAL_CODE
from {{ source('event_raw', 'ATTENDEES') }}