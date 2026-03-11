{{
    config(
        materialized='table'
    )
}}

SELECT
    da.appointment_id,
    da.appointment_date,
    da.appointment_time,
    da.patient_id,
    da.doctor_id,
    da.name,
    da.specialization,
    da.phone_contact,
    mp.procedure_id,
    mp.procedure_name
FROM {{ ref('stg_medical_procedures') }} mp
LEFT JOIN {{ ref('int_doctor_appointments') }} da 
    ON mp.appointment_id = da.appointment_id
