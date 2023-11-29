-- you can concat to strings with '||' the pipe operator
SELECT
    name || ', ' || country
FROM
    cities;

-- since its a generator column, you may want
-- to name the column.
SELECT
    name || ', ' || country AS location
FROM
    cities;

-- you could also use the CONCAT() operator, same thing rly
SELECT
    CONCAT (name, ', ', country) AS location
FROM
    cities;

-- You can make the str upper case with "UPPER"
SELECT
    CONCAT (UPPER(name), ', ', UPPER(country)) AS location
FROM
    cities;