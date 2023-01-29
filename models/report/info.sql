{{config(materialized='view',schema='reporting')}}

select 
    t.id,
    t.name,
    l.fullform,
    r.vote_average
from raw_trf.tr_rating r
join raw_trf.tr_title t
on r.id=t.id
join raw.Langua l
on r.Lang=l.original_language