{{config(materialized='table',schema='trf')}}

select
    ID ,
    Movie_Title
from Movie_Name

