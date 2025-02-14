{{ config(schema='gold') }}
SELECT 
ATTENDEE_ID,
NAME,
CITY,
COUNTRY,
POSTAL_CODE
from {{ ref('attendees') }}
