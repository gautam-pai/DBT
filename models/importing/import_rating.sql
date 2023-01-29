{{config(materialized='table',schema='staging')}}
select *
from rating
