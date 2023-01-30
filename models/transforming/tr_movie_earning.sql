{{config(materialized='table',schema='trf')}}

select
    ID,
    {{ Million_conv('Gross') }} as Gross ,
    Worldwide_Gross
from Movie_Earning