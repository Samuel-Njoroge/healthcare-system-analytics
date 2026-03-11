{{
    config(
        materialized='table'
    )
}}

SELECT
    procedure_id,
    procedure_name,
    appointment_id
FROM ANALYTICS.RAW.MEDICAL_PROCEDURES