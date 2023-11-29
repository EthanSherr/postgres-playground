select
    name,
    count(*)
from
    authors
    right join (
        select
            author_id,
            count(*)
        from
            books
        group by
            author_id
    ) g on g.author_id = authors.id;

-- 
select
    name,
    count(*)
from
    authors
    join books on books.author_id = authors.id
group by
    author_id,
    name;

--