CREATE TABLE books (
    isbn VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    year VARCHAR NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR UNIQUE,
    password VARCHAR NOT NULL
);

CREATE TABLE reviews (
    reviewID SERIAL PRIMARY KEY,
    id INT NOT NULL,
    isbn VARCHAR NOT NULL,
    rating INTEGER NOT NULL,
    review VARCHAR,
    FOREIGN KEY (id) REFERENCES users(id),
    FOREIGN KEY (isbn) REFERENCES books(isbn)
);
