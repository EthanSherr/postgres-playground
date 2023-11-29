-- create the table
CREATE TABLE
    phones (
        name CHAR(50),
        manufacturer CHAR(50),
        price INTEGER,
        units_sold INTEGER
    );

-- insert some dummy data
INSERT INTO
    phones (name, manufacturer, price, units_sold)
VALUES
    ('N1280', 'Nokia', 199, 1925),
    ('Iphone 4', 'Apple', 399, 9436),
    ('Galaxy S', 'Samsung', 299, 2359),
    ('S5620 Monte', 'Samsung', 250, 2385),
    ('N8', 'Nokia', 150, 7543);

-- select name, revenue = price * units_sold
SELECT
    name,
    price * units_sold AS revenue
FROM
    phones;