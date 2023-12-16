# Subquery From's

Calculate the avg price of phones for each manufacturer.  Then print the highest average price.  Rename this value to max_average_price.

```sql
SELECT MAX(p.avg) as max_average_price 
FROM (
    SELECT AVG(price) as avg
    FROM phones
    GROUP BY manufacturer
) as p;
```

```sql
SELECT MAX(p.avg_price) as max_average_price
FROM (
    SELECT AVG(price) as avg_price
    FROM phones
    GROUP BY manufacturer
) AS p;
```