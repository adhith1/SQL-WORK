---Create a new database called GroceryShop---
CREATE DATABASE GroceryStore;

---Switch to the GroceryStore database---
USE GroceryStore;

---Create a table named Products with columns for ProductID, ProductName, and Price---
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

---Insert sample data into the Products table---
INSERT INTO Products (ProductName, Price) VALUES
('Apple', 120),
('Banana', 50),
('Carrot', 30),
('Dairy Milk', 20),
('Eggs', 8.5);

---you are asked to add a new column called category (text) to the same table---
ALTER TABLE products
ADD category VARCHAR(50);

---The shop owner wants to remove all items from the products table without deleting the table itself---
TRUNCATE TABLE products;

--delete the entire database as it’s no longer needed---
DROP DATABASE GroceryShop;