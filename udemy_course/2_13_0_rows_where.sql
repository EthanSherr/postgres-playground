SELECT
    name,
    area
FROM
    cities
WHERE
    area > 300;

--  BETWEEN
SELECT
    name,
    area
FROM
    cities
where
    area BETWEEN 200 AND 400;

-- in
SELECT
    name,
    area
FROM
    cities
WHERE
    area IN (1, 2, 3, 232, 300);