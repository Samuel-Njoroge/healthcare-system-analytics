{{
    config(
            materialized='table'
        )
}}

SELECT
    invoice_id,
    patient_id,
    invoiced_items,
    amount
FROM {{ ref('stg_billing') }}
