
Project1-
DATASET:-
  https://www.kaggle.com/datasets/sankha1998/tmdb-top-10000-popular-movies-dataset
  
  
Project2-
create or replace file format commaformat
type='csv'
field_delimiter=','
record_delimiter='\n'
skip_header=1

create or replace stage S3datastage1
file_format=commaformat
URL='s3://dbtlearning/new/new1'
CREDENTIALS=(AWS_KEY_ID='#############' AWS_SECRET_KEY='#############');

-----------------------------------------------------------------------------------
create or replace table movie_earning(
    id number,
    gross string,
    worldwide_gross string);
    
copy into movie_earning
from @S3datastage1/Movie_Earning.csv
------------------------------------------------------------------------------------
create or replace table movie_rating(
    ID number,
    Movie_Rating float,
    Metascore string,
    Votes number);
    
copy into movie_rating
from @S3datastage1/Movie_Rating.csv
-------------------------------------------------------------------------------------
create or replace table Movie_Year(
    ID number,
    Year number,
    Genre string,
    Duration number);
    
copy into movie_year
from @S3datastage1/Movie_Year.csv    
-------------------------------------------------------------------------------------    
create or replace table Movie_Name(
    id number,
    Movie_Title string);    
    
copy into movie_name
from @S3datastage1/Movie_Name.csv
