create table
    authors (id serial primary key, name varchar);

create table
    books (
        id serial primary key,
        title varchar,
        author_id int references authors (id)
    );

insert into
    authors (name)
values
    ('Stephen King'),
    ('JK Rowling'),
    ('Agatha Christie');

insert into
    books (title, author_id)
values
    ('It', 1),
    ('Affair at Styles', 3),
    ('The old man and the sea', NULL);