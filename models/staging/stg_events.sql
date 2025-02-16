{{ config(schema='staging') }}
SELECT 
EVENT_ID,
NAME,
DESCRIPTION,
TRIM(location:city,'"') as CITY,
TRIM(location:country,'"') as COUNTRY,
TO_DATE(EVENT_DATE) AS EVENT_DATE
from {{ source('raw_data', 'EVENTS') }}
