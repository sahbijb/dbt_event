{{ config(schema='silver') }}
SELECT 
ATTENDEE_ID,
NAME,
EMAIL,
TRIM(address:city,'"') as CITY,
TRIM(address:country,'"') as COUNTRY,
TRIM(address:postal_code,'"') as POSTAL_CODE
from {{ source('event_bronze', 'ATTENDEES') }}