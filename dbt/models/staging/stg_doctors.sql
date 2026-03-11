{{
    config(
        materialized='table'
    )
}}

SELECT
    doctor_id,
    name,
    specialization,
    phone_contact
FROM ANALYTICS.RAW.DOCTORS