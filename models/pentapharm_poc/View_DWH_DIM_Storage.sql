{{
    config(
        materialized='view'
    )
}}

SELECT
    l.Storage,
    l.Location,
    l.StorageText,
    l.StorageKind AS StorageKind,
    sk.StorageKindText,
    l.StorageType AS StorageType,
    st.StorageTypeText,
    ss.StorageSpecial,
    sr.ResponsiblePerson
FROM (
    SELECT
        LagerOrt AS Storage,
        StaoNr AS Location,
        Bezeichnung AS StorageText,
        LagerArt AS StorageKind,
        LagerTyp AS StorageType
    FROM {{ ref('bronze_casy_lagerorte') }}
) l
LEFT JOIN {{ ref('Dim_StorageKind') }} sk ON l.StorageKind = sk.StorageKind
LEFT JOIN {{ ref('Dim_StorageType') }} st ON l.StorageType = st.StorageType
LEFT JOIN {{ ref('Dim_StorageSpecial') }} ss ON l.Storage = ss.StorageNo
LEFT JOIN {{ ref('Dim_Struct_Storage_Responsible') }} sr ON l.Storage = sr.StorageNo