{{
    config(
        materialized='incremental'
    )
}}

SELECT
    procedure_id,
    procedure_name,
    appointment_id
FROM {{ ref('stg_medical_procedures') }}