-- write a query that will print the name
--  and total_revenue of all phones with a total_revenue
-- greater than 1,000,000
SELECT
    name,
    price * units_sold as total_revenue
from
    phones
where
    price * units_sold > 1000000;