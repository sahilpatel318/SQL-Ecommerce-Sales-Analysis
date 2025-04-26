-- insert_data.sql

USE EcommerceDB;

-- 1. Insert Customers
INSERT INTO Customers (FirstName, LastName, Email, SignupDate)
VALUES 
('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20'),
('Mike', 'Patel', 'mike.patel@example.com', '2023-03-10');

-- 2. Insert Categories
INSERT INTO Categories (CategoryName)
VALUES
('Electronics'),
('Clothing'),
('Accessories');

-- 3. Insert Products
INSERT INTO Products (ProductName, CategoryID, Price, Stock)
VALUES
('Smartphone', 1, 699.99, 50),
('Laptop', 1, 999.99, 25),
('T-Shirt', 2, 19.99, 100),
('Baseball Cap', 3, 12.99, 70);

-- 4. Insert Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
(1, '2023-04-01', 712.98),
(2, '2023-04-02', 19.99),
(3, '2023-04-04', 1012.98);

-- 5. Insert OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, LineTotal)
VALUES
(1, 1, 1, 699.99),   -- 1 Smartphone
(1, 4, 1, 12.99),    -- 1 Baseball Cap
(2, 3, 1, 19.99),    -- 1 T-Shirt
(3, 2, 1, 999.99),   -- 1 Laptop
(3, 4, 1, 12.99);    -- 1 Baseball Cap
