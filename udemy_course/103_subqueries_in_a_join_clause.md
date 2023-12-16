## subqeries in a join clause

```sql
SELECT first_name
FROM users
JOIN (
    <-- some subquery can go here!
) AS o
ON o.user_id = users.id
```


```sql
SELECT first_name
FROM users
JOIN (
    SELECT user_id
    FROM orders
    WHERE product_id = 3
) AS o
ON o.user_id = users.id;
```

## subqueries in a where statement

A valid subquery is going to have to match the operator in the where clause!

```sql
SELECT id
FROM orders
WHERE product_id IN (... subquery here)

```

```sql
SELECT id
FROM orders
WHERE product_id IN (
    SELECT id
    FROM products
    WHERE price / weight > 5
)

```

### Example:

Show the name of all products with a price greater than the average product price.

```sql
SELECT name
FROM products
WHERE price > (
    SELECT AVG(price) as avg_price 
    FROM products
)
```