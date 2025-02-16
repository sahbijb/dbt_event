{{ config(schema='staging') }}
SELECT 
ORDER_ID,
EVENT_ID,
ATTENDEE_ID,
AMOUNT,
CURRENCY,
TO_DATE(ORDER_DATE) AS ORDER_DATE
from {{ source('raw_data', 'ORDERS') }}
