-- 1. Create a new database
CREATE DATABASE BookStoreDB;

-- 2. Select this database to work on
USE BookStoreDB;

-- 3. Create the authors table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50)
);

-- 4. Create the books table with a foreign key reference to authors
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    price DECIMAL(10,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- 5. Add a new column called published_year
ALTER TABLE books
ADD published_year INT;

-- 6. Delete all rows from the books table (without removing the table itself)
TRUNCATE TABLE books;

-- 7. Remove the entire database
DROP DATABASE BookStoreDB;
