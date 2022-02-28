{{config(materialized='table')}}

select 
    first_name
    ,first_order_date
    ,number_of_orders
from  {{ ref('customers') }}  
order by number_of_orders desc  