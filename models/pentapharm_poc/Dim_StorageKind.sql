{{
    config(
        materialized='table'
    )
}}

WITH DWH_DIM_StorageKind AS
(
    SELECT * FROM {{ source("Pefa_gbos", "DWH_DIM_StorageKind") }}
)
SELECT * FROM DWH_DIM_StorageKind