DROP DATABASE IF EXISTS short_wallaby_library;
CREATE DATABASE short_wallaby_library;

\c short_wallaby_library;

DROP TABLE IF EXISTS books;
CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  bookUrl VARCHAR(2000),
  description VARCHAR(2000)
);

INSERT INTO books (title, author, bookUrl, description)
VALUES ('Parable of the Sower', 'Octavia Butler', 'imagehere', 'this is some sht about this book that is so good that i have read it over and over and over and over and over again and i will probably read it again sometime very sooon')
