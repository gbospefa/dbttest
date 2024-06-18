{{
    config(
        materialized='table'
    )
}}

WITH DWH_DIM_StorageSpecial AS
(
    SELECT * FROM {{ source("Pefa_gbos", "DWH_DIM_StorageSpecial") }}
)
SELECT * FROM DWH_DIM_StorageSpecial