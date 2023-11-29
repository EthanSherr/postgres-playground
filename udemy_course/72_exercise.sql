-- from 71 dataset
-- write a query to print the number of paid and unpaid orders
-- paid, count
select
    paid,
    count(*)
from
    orders
group by
    paid;