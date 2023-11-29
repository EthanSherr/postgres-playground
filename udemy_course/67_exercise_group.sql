-- write a query that will print an author's
-- id and the number of books they have authored.
SELECT
    author_id,
    count(*)
from
    books
group by
    author_id;