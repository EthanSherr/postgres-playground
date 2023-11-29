-- join together users and orders, print the first_name and last_name of each users, 
-- whether they have paid for their order 
select
    first_name,
    last_name,
    paid
from
    users
    inner join orders on orders.user_id = users.id;