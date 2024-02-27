
{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
<<<<<<< HEAD
=======
    select null as id
    union all
>>>>>>> 425c73ac4fc68af7d623a806bf456efe684226b1
    select 2 as id
          
   
<<<<<<< HEAD

)

select *
from source_data
   

=======
>>>>>>> 425c73ac4fc68af7d623a806bf456efe684226b1

)

select *
from source_data
<<<<<<< HEAD

=======
>>>>>>> 425c73ac4fc68af7d623a806bf456efe684226b1
