{{ config(schema='marts') }}

WITH RECURSIVE DateGenerator AS (
    SELECT
        DATE('2020-01-01') AS DateValue
    UNION ALL
    SELECT
        DateValue + INTERVAL '1 DAY'
    FROM
        DateGenerator
    WHERE
        DateValue + INTERVAL '1 DAY' < DATE('2100-01-01')
)
SELECT
    DateValue AS Date,
    EXTRACT(YEAR FROM DateValue) AS Year,
    EXTRACT(MONTH FROM DateValue) AS Month,
    EXTRACT(DAY FROM DateValue) AS Day
FROM
    DateGenerator