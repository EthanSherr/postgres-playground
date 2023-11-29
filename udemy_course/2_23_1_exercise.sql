-- write two separate queries
-- first should update units_sold of the phone with name N8 to 8543
UPDATE phones
SET
    units_sold = 8543
WHERE
    name = 'N8';

-- second query should select all rows and oclumns of the phones table
SELECT
    *
FROM
    phones;