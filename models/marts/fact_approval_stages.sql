
{{ config(schema='marts') }}

select 
    approval_stage_id,
    expense_id,
    approver_id,
    approval_date,
    approval_status
from 
    {{ ref('stg_approval_stages') }}