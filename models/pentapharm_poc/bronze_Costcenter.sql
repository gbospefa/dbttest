Select 
    KSTJahr as CostcenterYear, 
    KSTNr as CostcenterNumber, 
    BuchSperre as CostcenterBlock, 
    BuchSperreAb as CostcenterBlockFrom,
    BuchSperreBis as CostcenterBlockTo,
    KSTBez as CostcenterName,
    KSTKlasse as CostcenterClass,
    PersKurzZeich as Responsible1,
    PersKurzZeich2 as Responsible2,
    PersKurzZeich3 as Responsible3,
    PersKurzZeich4 as Responsible4 
FROM {{ source('Pefa_gbos', 'casy_kststamm') }}