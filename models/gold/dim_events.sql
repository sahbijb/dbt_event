{{ config(schema='gold') }}
SELECT 
EVENT_ID,
NAME,
CITY,
COUNTRY,
EVENT_DATE
from {{ ref('events') }}
