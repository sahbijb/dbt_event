{{ config(schema='mart_marketing', materialized = 'view') }}

SELECT e.country, SUM(f.amount) AS total_revenue
FROM  {{ ref('fact_orders') }} f
JOIN {{ ref('dim_events') }} e ON f.event_id = e.event_id
GROUP BY e.country
ORDER BY total_revenue DESC