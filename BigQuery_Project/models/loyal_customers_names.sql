select
    first_name
    ,count(*) as count_of_name
from {{ref('loyal_customers')}}
group by first_name
order by count(*) desc