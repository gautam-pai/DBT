{{config(materialized='table',schema='trf')}}

select 
    *
from raw_staging.import_title