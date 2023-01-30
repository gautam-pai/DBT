{{config(materialized='table',schema='trf')}}

select
    ID ,
    Year ,
    Genre,
    Duration
from Movie_Year