# subquery with "not in" operator

Show the name of all products that are not in the same department as products with a price less than 100.


```sql
SELECT name
FROM products
WHERE department NOT IN (
    SELECT department 
    FROM products
    WHERE price < 100
)
```