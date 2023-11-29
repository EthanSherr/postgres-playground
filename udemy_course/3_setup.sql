CREATE TABLE
    users (
        id INTEGER PRIMARY KEY,
        username VARCHAR(50),
        email VARCHAR(50)
    );

CREATE TABLE
    photos (id, url VARCHAR(200), user_id INTEGER);

CREATE TABLE
    comments (
        id,
        text VARCHAR(200),
        user_id INTEGER,
        photo_id INTEGER
    );

CREATE TABLE
    likes ();