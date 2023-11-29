-- subtract second query from first query.
(
    select
        id,
        name
    from
        products
    order by
        price desc
    limit
        4
)
except
(
    select
        id,
        name
    from
        products
    order by
        price / weight desc
    limit
        6
)