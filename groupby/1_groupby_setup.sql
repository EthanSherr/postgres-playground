CREATE TABLE
    orders (
        id serial primary key,
        order_date date,
        product_id int,
        order_value int
    );

INSERT INTO
    orders (order_date, product_id, order_value)
VALUES
    (NOW (), 1, 30),
    (NOW (), 1, 30),
    (NOW (), 2, 25),
    (NOW (), 1, 30),
    (NOW (), 2, 123),
    (NOW (), 5, 5);