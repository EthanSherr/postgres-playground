-- write a query that will select the 
-- name and manufacturer for all phones 
-- created by apple or samsung
SELECT
    name,
    manufacturer
FROM
    phones
WHERE
    manufacturer IN ('Apple', 'Samsung');