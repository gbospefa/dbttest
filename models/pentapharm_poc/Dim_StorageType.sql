{{
    config(
        materialized='table'
    )
}}

WITH DWH_DIM_StorageType AS
(
    SELECT * FROM {{ source("Pefa_gbos", "DWH_DIM_StorageType") }}
)
SELECT * FROM DWH_DIM_StorageType