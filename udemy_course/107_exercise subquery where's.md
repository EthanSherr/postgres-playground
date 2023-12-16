# Coding exercise 21: Subquery Where's
[link](https://www.udemy.com/course/sql-and-postgresql/learn/quiz/4990450#overview)

Write a query that prints out the `name` and `price` of phones that have a price greater than the Samsung S5620 Monte;

```sql
SELECT name, price
FROM phones 
WHERE price > (
    SELECT price
    FROM phones
    WHERE name = 'S5620 Monte'
)
```

It works!  But... since > expects one value, What would happen if two phones have the same name and two rows are returned for the name = '5620 Monte' query?
I will insert a new phone of name 'S5620 Monte'


```sql
INSERT INTO phones 
    (name, manufacturer, units_sold, price)
VALUES 
    ('S5620 Monte', 'Ethan', 0, 1);
```


this time the result is...
```sh
ERROR:  more than one row returned by a subquery used as an expression
```

ok in this case you may want to use a MAX or MIN or something, some aggregate here to make sure only one "S5620 monte" is returned in the inner q.