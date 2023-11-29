# subqueries lol

List the name and price of all products that are more expensiev than all products in the 'Toys' department.

```sql
with max_toys as (
    select max(price) as max_price
    from products
    where department = 'Toys'
)
select name, price
from products
where price > max_toys.max_price
```





```sql
with max_toys as (
    select max(price) as max_price
    from products
    where department = 'Toys'
)
select name, price
from products
where price > (    select max(price) as max_price
    from products
    where department = 'Toys').max_price
```