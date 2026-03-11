{{
    config(
        materialized='table'
    )
}}

SELECT
    a.appointment_id,
    a.appointment_date,
    a.appointment_time,
    a.patient_id,
    d.doctor_id,
    d.name,
    d.specialization,
    d.phone_contact
FROM {{ ref('stg_doctors') }} d 
LEFT JOIN {{ ref('stg_appointments') }} a 
    ON d.doctor_id = a.doctor_id
