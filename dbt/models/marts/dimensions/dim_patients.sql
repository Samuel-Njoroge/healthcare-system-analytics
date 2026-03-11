{{
    config(
        materialized='table'
    )
}}

SELECT
    patient_id,
    first_name,
    last_name,
    email
FROM {{ ref('stg_patients') }}