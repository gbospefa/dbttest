Select KPJahr as CostplaceYear, KPNr as CostplaceNumber, KSTNr as CostcenterNumber, ArtNr as ArticleNumber, BuchSperre as CostplaceBlock, BuchSperreAb as CostplaceBlockfrom, BuchSperreBis as CostplaceBlockTo, KPBez as CostplaceName  from {{ source('Pefa_gbos', 'casy_kpstamm') }}