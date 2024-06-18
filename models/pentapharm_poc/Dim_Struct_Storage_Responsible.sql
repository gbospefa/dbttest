{{
    config(
        materialized='table'
    )
}}

WITH DWH_DIM_STRUCT_Storage_Responsible AS
(
    SELECT * FROM {{ source("Pefa_gbos", "DWH_DIM_STRUCT_Storage_Responsible") }}
)
SELECT * FROM DWH_DIM_STRUCT_Storage_Responsible