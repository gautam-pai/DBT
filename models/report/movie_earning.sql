{{config(materialized='table',schema='reporting')}}

select
    tmy.id,
    tmn.Movie_Title,
    tmr.Movie_Rating,
    tme.Gross,
    tme.Worldwide_Gross
from raw_trf.tr_movie_year tmy
join raw_trf.tr_movie_name tmn
using (id)
join raw_trf.tr_movie_rating tmr
using (id)
join raw_trf.tr_movie_earning tme
using (id)