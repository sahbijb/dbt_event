
{{ config(schema='marts') }}

select 
    expense_id,
    submitted_by,
    created_date,
    updated_date,
    hash(category) category_id,
    expense_date,
    CASE
        WHEN CURRENCY='CAD' THEN expense_amount * 0.7
        WHEN CURRENCY='EUR'  THEN expense_amount * 1.4
        ELSE expense_amount
    END AS expense_amount,
    expense_status
from 
    {{ ref( 'stg_expenses') }}