
{{ config(schema='staging') }}

select 
    approval_stage_id,
    expense_id,
    approver_id,
    to_date(approval_date) approval_date,
    approval_status,
    comments
from 
    {{ source('raw_data', 'APPROVAL_STAGES') }}