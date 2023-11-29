SELECT
    *
FROM
    customers
    left join (
        SELECT
            customer_id,
            json_agg (transactions.id)
        FROM
            customers
            INNER JOIN transactions ON transactions.customer_id = customers.id
        GROUP BY
            customer_id
    ) agg on agg.customer_id = customers.id;