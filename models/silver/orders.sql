{{ config(schema='silver') }}
SELECT 
ORDER_ID,
EVENT_ID,
ATTENDEE_ID,
AMOUNT,
CURRENCY,
TO_DATE(ORDER_DATE) AS ORDER_DATE
from {{ source('event_bronze', 'ORDERS') }}
