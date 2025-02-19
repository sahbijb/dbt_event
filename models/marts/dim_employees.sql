
{{ config(schema='marts') }}

select 
    employee_id, Name , department, manager_id 
from 
    {{ ref ('stg_employees')}}