{{
    config(
        materialized='incremental'
    )
}}

SELECT
    pa.appointment_id,
    pa.appointment_date,
    pa.appointment_time,
    mp.procedure_id,
    mp.procedure_name,
    pa.doctor_id,
    pa.patient_id,
    pa.first_name,
    pa.last_name,
    pa.email
FROM {{ ref('stg_medical_procedures') }} mp
LEFT JOIN {{ ref('int_patient_appointments') }} pa 
    ON mp.appointment_id = pa.appointment_id
