# Corellated subquery MD:

Show the name, department, and price of the most expensive product in each department.

```sql
SELECT name, department, price
FROM products
WHERE price (

)
```



Well here's how I would write it normally:
select the department, max(price) group by department, to get max price of each dep...
then join that w/ products table to select more fields.

```sql
SELECT products.name, products.department, products.price
FROM products
INNER JOIN  (SELECT department, MAX(price) as max_price
    FROM products
    GROUP by department
) as q ON q.max_price = products.price AND q.department = products.department
```


```sql
SELECT name, department, price
FROM products AS p1
WHERE p1.price = (
    SELECT MAX(p2.price)
    FROM products AS p2
    WHERE p2.department = p1.department
)

```