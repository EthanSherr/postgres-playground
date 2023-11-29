CREATE TABLE
    customers (
        id serial primary key,
        first_name char(20),
        last_name char(20)
    );

INSERT INTO
    customers (first_name, last_name)
VALUES
    ('Ethan', 'Sherr'),
    ('May', 'Khine'),
    ('Matt', 'Balnis'),
    ('Matt', 'Reid'),
    ('Sam', 'Seifert');

CREATE TABLE
    transactions (
        id serial primary key,
        amount float,
        customer_id INT REFERENCES customers (id) NULL
    );

INSERT INTO
    transactions (amount, customer_id)
VALUES
    (2.9, 1),
    (4.1, 2),
    (5.1, 1),
    (4.1, 1),
    (5.1, 2),
    (7.1, 2),
    (1.1, 1),
    (24.1, 2),
    (4.1, 1),
    (6, NULL),
    (6, NULL),
    (6, NULL);