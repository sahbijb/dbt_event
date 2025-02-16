{{ config(schema='mart_marketing') }}
SELECT 
ORDER_ID,
EVENT_ID,
ATTENDEE_ID,
CASE
    WHEN CURRENCY='CAD' THEN AMOUNT * 0.7
    WHEN CURRENCY='USD'  THEN AMOUNT * 1.4
    ELSE AMOUNT
END AS AMOUNT,
ORDER_DATE
from {{ ref('stg_orders') }}
