-- write two separate queries
-- first should delete all phones that were created by samsung
DELETE FROM phones
WHERE
    manufacturer = 'Samsung';

SELECT
    *
FROM
    phones;