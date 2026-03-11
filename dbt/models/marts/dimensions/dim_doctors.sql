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
FROM {{ ref('stg_doctors') }}