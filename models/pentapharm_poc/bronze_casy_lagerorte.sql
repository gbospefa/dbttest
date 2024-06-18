{{
    config(
        materialized='table'
    )
}}

WITH bronze_casy_lagerorte AS
(
    SELECT * FROM {{ source("Pefa_gbos", "CASY_LAGERORTE") }}
)
SELECT * FROM CASY_LAGERORTE