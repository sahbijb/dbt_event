
{{ config(schema='staging') }}

select 
    expense_id,
    submitted_by,
    to_date(created_date) created_date,
    to_date(updated_date) updated_date,
    category,
    expense_date,
    expense_amount,
    currency,
    expense_status
from 
    {{ source('raw_data', 'EXPENSES') }}