{{config(materialized='table',schema='trf')}}

select
    ID,
    {{ Add_Mill('Gross') }} as Gross ,
    Worldwide_Gross
from RAW_TRF.TR_Movie_Earning