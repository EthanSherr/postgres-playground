-- take a table of phones,
-- names, manufacturer, price, units_sold
-- print the names of manufacturers and total revenue (price * units_sold) for all phones.
-- only print the manufacturers who hvae revenue greater than 2mil for all phones they sold
SELECT
    manufacturer,
    SUM(price * units_sold)
FROM
    phones
group by
    manufacturer
having
    SUM(price * units_sold) > 2000000