-- only show second most expensive phones
select
    name
from
    phones
order by
    price desc
offset
    1
limit
    2;