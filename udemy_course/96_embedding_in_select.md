# embedding in select [link](https://www.udemy.com/course/sql-and-postgresql/learn/lecture/22802031#overview)

write a query that prints the `name` and `price` for each phone.  in addition, print out the ratio of the phones price against the max price of all phones.  rename this third column to `price_ratio`

my table is:
```sh
 id |    name     | manufacturer | price | units_sold 
----+-------------+--------------+-------+------------
  1 | N1280       | Nokia        |   199 |       1925
  2 | Iphone 4    | Apple        |   399 |       9436
  3 | Galaxy S    | Samsung      |   299 |       2359
  4 | S5620 Monte | Samsung      |   250 |       2385
  5 | N8          | Nokia        |   150 |       7543
  6 | Droid       | Motorola     |   150 |       8395
  7 | Wave S8500  | Samsung      |   175 |       9259
```

```sql
with max_phone_price as (
    select max(price) as max_price 
    from phones
)
select name, price, price / (select max_price from max_phone_price) as price_ratio
from phones;
```