SELECT
    name,
    population / area as population_density
FROM
    cities
WHERE
    population / area > 6000;