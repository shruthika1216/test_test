
{{ config(materialized='table',

) }}



with source_data as (

    select 1 as id
    union all
<<<<<<< HEAD
    select null as id
    union all
    select null as id
    union all
    select null as id
=======
    select 2 as id
    
        
   
>>>>>>> 23e6edf425cac2ddb660a1d0c370c8bb46b63962

)

select *
from source_data

/*
    Uncomment the line below to remove records with null id values
*/

-- where id is not null