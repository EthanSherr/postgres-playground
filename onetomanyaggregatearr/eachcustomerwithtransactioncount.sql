SELECT
    customers.*,
    COALESCE(transaction_count)
FROM
    customers
    LEFT JOIN (
        SELECT
            customer_id,
            COUNT(*) as transaction_count
        FROM
            transactions
        GROUP BY
            customer_id
    ) AS transaction_counts ON transaction_counts.customer_id = customers.id;