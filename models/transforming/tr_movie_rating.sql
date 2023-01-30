{{config(materialized='table',schema='trf')}}

select
    ID,
    Movie_Rating,
    Metascore,
    Votes

from Movie_Rating