-- select
--     transactions.id,
--     TC.id,
--     amt
-- from
--     transactions
--     inner join (
--         select
--             customers.id id,
--             max(amount) amt
--         from
--             transactions
--         group by
--             customers.id
--     ) as TC on transactions.customer_id = TC.id
-- where
--     transactions.amount = TC.amt;
SELECT
    customer_id,
    MAX(amount) AS max_amount,
    (
        SELECT
            id
        FROM
            transactions
        WHERE
            customer_id = t.customer_id
            AND amount = MAX(t.amount)
        LIMIT
            1
    ) AS max_amount_id
FROM
    transactions t
GROUP BY
    customer_id;

-- or i can do something more like:
SELECT
    t1.customer_id,
    t1.id,
    t1.amount
FROM
    your_table_name t1
    JOIN (
        SELECT
            customer_id,
            MAX(amount) AS max_amount
        FROM
            your_table_name
        GROUP BY
            customer_id
    ) t2 ON t1.customer_id = t2.customer_id
    AND t1.amount = t2.max_amount;