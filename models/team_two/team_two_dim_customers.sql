{{config(alias='dim_customers')}}
select
    *
from {{ref('dim_customers')}}