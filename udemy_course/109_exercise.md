## practice your subqueries!

write a query that prints the `name` of all phones that have a `price` greater than any phone made by Samsung.

```sql
SELECT name
FROM phones
WHERE price > SOME (
    SELECT price
    FROM phones
    WHERE manufacturer = 'Samsung'
);
```

Arg then he changed it to "which have a price grerater than *all* phoens made by Samsung.


```sql
SELECT name
FROM phones
WHERE price > ALL (
    SELECT price
    FROM phones
    WHERE manufacturer = 'Samsung'
);
```