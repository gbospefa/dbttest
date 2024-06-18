{{
    config(
        materialized='incremental'
    )
}}

select * from {{ source('Pefa_gbos', 'Casy_LagerbewegungTop') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records whose timestamp occurred since the last run of this model)
  where BewegungsNr > (select (max(BewegungsNr)) from {{ this }})

{% endif %}