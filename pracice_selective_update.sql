create table
    people (
        id serial primary key,
        name varchar,
        age integer,
        email varchar
    );

insert into
    people (name, age, email)
values
    ('ethan', 33, 'esherrthan@gmail.com'),
    ('may', 13, null),
    ('dave', 75, null);

-- selectively update the ones that are null
update people
set
    email = CONCAT (name, '@gmail.com')
where
    email is null;