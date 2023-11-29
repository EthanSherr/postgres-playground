SELECT
    product_id,
    COUNT(*)
FROM
    orders
GROUP BY
    product_id;