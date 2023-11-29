CREATE TABLE
    users (id SERIAL PRIMARY KEY, name VARCHAR);

INSERT INTO
    users (name)
VALUES
    ('Ethan'),
    ('May'),
    ('Anna'),
    ('Fred');

CREATE TABLE
    photos (
        id SERIAL PRIMARY KEY,
        url VARCHAR(200),
        user_id INTEGER REFERENCES users (id) ON DELETE SET NULL
    );

INSERT INTO
    photos (url, user_id)
VALUES
    ('http:/one.jpg', 4),
    ('http:/two.jpg', 1),
    ('http:/25.jpg', 1),
    ('http:/36.jpg', 1),
    ('http:/754.jpg', 2),
    ('http:/35.jpg', 3),
    ('http:/256.jpg', 4);