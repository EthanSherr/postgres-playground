SELECT
    *
FROM
    transactions
    RIGHT JOIN customers ON transactions.customer_id = customers.id;

-- same as
SELECT
    *
FROM
    customers
    LEFT JOIN transactions ON transactions.customer_id = customers.id;

-- what about
-- with
--     t as (
--         select
--             *
--         from
--             transactions
--     )
-- SELECT
--     *
-- FROM
--     customers,
--     t
-- WHERE
--     id = t.customer_id;