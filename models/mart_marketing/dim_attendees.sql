{{ config(schema='mart_marketing') }}
SELECT 
ATTENDEE_ID,
NAME,
CITY,
COUNTRY,
POSTAL_CODE
from {{ ref('stg_attendees') }}
