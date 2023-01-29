{{config(materialized='table',schema='trf')}}

select 
    id,
    original_language as Lang,
    vote_count,
    vote_average
from raw_staging.import_rating