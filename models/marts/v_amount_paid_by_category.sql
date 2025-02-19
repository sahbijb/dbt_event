{{ config(schema='marts', materialized = 'view') }}
 
select c.category, sum(f.expense_amount) Amount 
from {{ ref ('fact_expenses')}} f
join {{ ref ('dim_categories')}} c on f.category_id = c.id
where f.expense_status = 'Paid'
group by c.category