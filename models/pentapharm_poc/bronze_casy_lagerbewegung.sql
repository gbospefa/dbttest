{{
    config(
        materialized='table'
    )
}}

WITH raw_casy_lagerbewegung AS
(
    SELECT * FROM {{ source("Pefa_gbos", "CASY_LAGERBEWEGUNG") }}
)
SELECT * FROM raw_casy_lagerbewegung