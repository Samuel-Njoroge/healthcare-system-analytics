{{
    config(
        materialized='table'
    )
}}

SELECT
    a.appointment_id,
    a.appointment_date,
    a.appointment_time,
    a.doctor_id,
    p.patient_id,
    p.first_name,
    p.last_name,
    p.email
FROM {{ ref('stg_patients') }} p 
LEFT JOIN {{ ref('stg_appointments') }} a 
    ON p.patient_id = a.patient_id
