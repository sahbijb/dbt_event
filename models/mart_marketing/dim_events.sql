{{ config(schema='mart_marketing') }}
SELECT 
EVENT_ID,
NAME,
CITY,
COUNTRY,
EVENT_DATE
from {{ ref('events') }}
