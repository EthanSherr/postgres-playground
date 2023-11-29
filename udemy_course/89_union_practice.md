# mergin results with union [link](https://www.udemy.com/course/sql-and-postgresql/learn/quiz/4992722#overview)

write a query that will print the `manufacturer` of phones where the phone's price is less than 170.  Also print all `manufacturer` that have created more than two phones.

```sql
(
    select manufacturer
    from phones
    where price < 170
)
UNION
(
    select manufacturer
    from phones
    group by manufacturer
    having count(*) > 2
)
```

# important, you dont need to wrap each query with parenthesis.  Solution should not have parens in it???

