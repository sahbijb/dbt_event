
{{ config(schema='staging') }}

select 
    employee_id, SUBSTR(name, 0, 2) Name , department, manager_id 
from 
    {{ source('raw_data', 'EMPLOYEES') }}