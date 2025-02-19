
{{ config(schema='marts') }}

with categories as(
select 
    distinct category
from 
    {{ ref ('stg_expenses')}}
)
select 
    hash(category) ID,
    category
from
    categories