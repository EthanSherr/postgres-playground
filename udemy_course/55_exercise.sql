-- authors table and books table (with author_id).  Return the um
-- author's name as well as the book's title.  All author's should be included
-- even if they have no book.
select
    name,
    title
from
    authors
    left join books on books.author_id = authors.id;