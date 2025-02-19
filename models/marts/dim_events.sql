{{ config(schema='marts') }}
SELECT 
EVENT_ID,
NAME,
CITY,
COUNTRY,
EVENT_DATE
from {{ ref('stg_events') }}
