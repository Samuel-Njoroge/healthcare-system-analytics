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
FROM ANALYTICS.RAW.BILLING
