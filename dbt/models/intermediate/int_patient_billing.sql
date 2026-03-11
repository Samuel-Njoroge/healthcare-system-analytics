{{
    config(
        materialized='table'
    )
}}

SELECT
    p.patient_id,
    p.first_name,
    p.last_name,
    p.email,
    i.invoice_id,
    i.invoiced_items,
    i.amount
FROM {{ ref('stg_patients') }} p 
LEFT JOIN {{ ref('stg_billing') }} i 
    ON p.patient_id = i.patient_id
