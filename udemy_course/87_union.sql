-- using the um... products table:
-- find the 4 products with the highest price andt he 4 products with the highest price/weight ratio.
(
    select
        *
    from
        products
    order by
        price
    limit
        4
)
union
(
    select
        *
    from
        products
    order by
        price / weight
    limit
        4
)
-- i think union acts uniquely
(
    select
        age,
        name
    from
        person
    where
        name = 'Armand'
)
UNION
(
    select
        id,
        first_name
    from
        users
    where
        first_name = 'Armand'
)
/*
number |         name         
--------+----------------------
39 | Armand
38 | Armand              
(2 rows)
 */

 UNION needs to have the same number of selects.