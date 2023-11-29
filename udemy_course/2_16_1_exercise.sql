-- write query to print names and price of all phones that sold greater than 5000 units
SELECT
    name,
    price
FROM
    phones
WHERE
    units_sold > 5000;