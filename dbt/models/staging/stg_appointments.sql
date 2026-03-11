{{
    config(
        materialized='incremental',
        unique_key='appointment_id'
    )
}}

SELECT
    appointment_id,
    appointment_date,
    appointment_time,
    patient_id,
    doctor_id
FROM ANALYTICS.RAW.APPOINTMENTS

{% if is_incremental() %}
  WHERE appointment_time > (SELECT max(appointment_time) FROM {{ this }})
{% endif %}
