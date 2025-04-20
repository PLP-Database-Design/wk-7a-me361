-- QUESTION 1
-- 1NF each row represents a single product for an order
CREATE TABLE ProductDetails_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO ProductDetails_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetails_1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetails_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetails_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetails_1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetails_1NF VALUES (103, 'Emily Clark', 'Phone');


-- QUESTION 2
-- 2NF WE WILL FISRT HAVE TO DECOMPOSE THE DATA INTO TWO TABLES
-- 1. Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

-- 2. Products Table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO OrderItems VALUES (101, 'Laptop', 2);
INSERT INTO OrderItems VALUES (101, 'Mouse', 1);
INSERT INTO OrderItems VALUES (102, 'Tablet', 1);
INSERT INTO OrderItems VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItems VALUES (102, 'Mouse', 2);
INSERT INTO OrderItems VALUES (103, 'Phone', 1);

