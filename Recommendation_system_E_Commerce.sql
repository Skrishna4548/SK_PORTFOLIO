-- Create Databases
CREATE DATABASE ECommerce;

use ECommerce;

-- Create the Products table
CREATE TABLE Products (
    product_id VARCHAR(20),
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    brand VARCHAR(50)
);

-- Insert data into the Products table
INSERT INTO Products (product_id, product_name, category, price, brand) VALUES
('P001', 'Laptop', 'Electronics', 1200.00, 'Dell'),
('P002', 'Smartphone', 'Electronics', 800.00, 'Samsung'),
('P003', 'Headphones', 'Electronics', 100.00, 'Sony'),
('P004', 'T-shirt', 'Clothing', 20.00, 'Nike'),
('P005', 'Jeans', 'Clothing', 50.00, 'Levi''s'),
('P006', 'Watch', 'Accessories', 150.00, 'Casio'),
('P007', 'Sneakers', 'Shoes', 80.00, 'Adidas'),
('P008', 'Backpack', 'Bags', 40.00, 'JanSport'),
('P009', 'Gaming Console', 'Electronics', 300.00, 'Microsoft'),
('P010', 'Tablet', 'Electronics', 250.00, 'Apple'),
('P011', 'Running Shoes', 'Shoes', 90.00, 'Nike'),
('P012', 'Sweater', 'Clothing', 45.00, 'H&M'),
('P013', 'Printer', 'Electronics', 150.00, 'HP'),
('P014', 'Dress Shirt', 'Clothing', 30.00, 'Calvin Klein'),
('P015', 'Camera', 'Electronics', 500.00, 'Canon'),
('P016', 'Sandals', 'Shoes', 25.00, 'Crocs'),
('P017', 'Handbag', 'Bags', 60.00, 'Michael Kors'),
('P018', 'Bluetooth Speaker', 'Electronics', 70.00, 'JBL'),
('P019', 'Hoodie', 'Clothing', 35.00, 'Under Armour'),
('P020', 'Desk Lamp', 'Home & Kitchen', 25.00, 'Ikea'),
('P021', 'Smart TV', 'Electronics', 700.00, 'LG'),
('P022', 'Wireless Earbuds', 'Electronics', 120.00, 'Bose'),
('P023', 'Backpack', 'Accessories', 35.00, 'SwissGear'),
('P024', 'Running Shorts', 'Clothing', 25.00, 'Adidas'),
('P025', 'Blender', 'Home & Kitchen', 50.00, 'Ninja'),
('P026', 'Dress Shoes', 'Shoes', 100.00, 'Cole Haan'),
('P027', 'Laptop Sleeve', 'Accessories', 20.00, 'AmazonBasics'),
('P028', 'Portable Charger', 'Electronics', 40.00, 'Anker'),
('P029', 'Yoga Mat', 'Sports & Fitness', 30.00, 'Gaiam'),
('P030', 'Coffee Maker', 'Home & Kitchen', 80.00, 'Keurig'),
('P031', 'Office Chair', 'Furniture', 150.00, 'Herman Miller'),
('P032', 'Sunglasses', 'Accessories', 60.00, 'Ray-Ban'),
('P033', 'Soccer Ball', 'Sports & Fitness', 15.00, 'Adidas'),
('P034', 'Hard Drive', 'Electronics', 90.00, 'Western Digital'),
('P035', 'Bath Towel', 'Home & Kitchen', 10.00, 'Fieldcrest'),
('P036', 'Backpack', 'Bags', 45.00, 'The North Face'),
('P037', 'Smart Speaker', 'Electronics', 120.00, 'Google'),
('P038', 'Dress', 'Clothing', 55.00, 'Zara'),
('P039', 'Dumbbell Set', 'Sports & Fitness', 75.00, 'CAP Barbell'),
('P040', 'Bookshelf', 'Furniture', 200.00, 'IKEA');


-- Create the Interactions table
CREATE TABLE Interactions (
    interaction_id INT PRIMARY KEY,
    user_id VARCHAR(20),  -- Change the data type to VARCHAR
    product_id VARCHAR(20),
    interaction_type VARCHAR(20)
);

-- Insert data into the Interactions table
INSERT INTO Interactions (interaction_id, user_id, product_id, interaction_type) VALUES
(1, 'USER001', 'P001', 'View'),
(2, 'USER002', 'P002', 'Add to Cart'),
(3, 'USER003', 'P003', 'Purchase'),
(4, 'USER004', 'P004', 'View'),
(5, 'USER005', 'P005', 'Add to Wishlist'),
(6, 'USER001', 'P006', 'View'),
(7, 'USER002', 'P007', 'Purchase'),
(8, 'USER003', 'P008', 'View'),
(9, 'USER004', 'P009', 'Add to Cart'),
(10, 'USER005', 'P010', 'View'),
(11, 'USER001', 'P011', 'Add to Cart'),
(12, 'USER002', 'P012', 'Purchase'),
(13, 'USER003', 'P013', 'View'),
(14, 'USER004', 'P014', 'Add to Wishlist'),
(15, 'USER005', 'P015', 'View'),
(16, 'USER001', 'P016', 'Add to Cart'),
(17, 'USER002', 'P017', 'Purchase'),
(18, 'USER003', 'P018', 'View'),
(19, 'USER004', 'P019', 'View'),
(20, 'USER005', 'P020', 'Purchase');

-- Create the Past Purchases table
CREATE TABLE Past_Purchases (
    purchase_id INT PRIMARY KEY,
    user_id VARCHAR(20), -- Change the data type to VARCHAR
    product_id VARCHAR(20),
    purchase_date TIMESTAMP,
    quantity INT,
    total_amount DECIMAL(10,2)
);

-- Insert data into the Past Purchases table
INSERT INTO Past_Purchases (purchase_id, user_id, product_id, purchase_date, quantity, total_amount) VALUES
(1, 'USER001', 'P001', '2023-10-15', 1, 1200),
(2, 'USER002', 'P002', '2023-10-16', 1, 800),
(3, 'USER003', 'P003', '2023-10-17', 2, 200),
(4, 'USER004', 'P004', '2023-10-18', 1, 20),
(5, 'USER005', 'P005', '2023-10-19', 3, 150),
(6, 'USER006', 'P006', '2023-10-20', 1, 150),
(7, 'USER007', 'P007', '2023-10-21', 2, 160),
(8, 'USER008', 'P008', '2023-10-22', 1, 40),
(9, 'USER009', 'P009', '2023-10-23', 1, 30),
(10, 'USER010', 'P010', '2023-10-24', 1, 250),
(11, 'USER011', 'P011', '2023-10-25', 1, 1200),
(12, 'USER012', 'P012', '2023-10-26', 1, 800),
(13, 'USER013', 'P013', '2023-10-27', 1, 100),
(14, 'USER014', 'P014', '2023-10-28', 2, 40),
(15, 'USER015', 'P015', '2023-10-29', 1, 50),
(16, 'USER016', 'P016', '2023-10-30', 1, 150),
(17, 'USER017', 'P017', '2023-10-31', 1, 80),
(18, 'USER018', 'P018', '2023-11-01', 1, 40),
(19, 'USER019', 'P019', '2023-11-02', 1, 300),
(20, 'USER020', 'P020', '2023-11-03', 1, 250),
(21, 'USER021', 'P021', '2023-11-04', 1, 90),
(22, 'USER022', 'P022', '2023-11-05', 1, 45),
(23, 'USER023', 'P023', '2023-11-06', 1, 150),
(24, 'USER024', 'P024', '2023-11-07', 1, 30),
(25, 'USER025', 'P025', '2023-11-08', 1, 500);


-- Analysis Started

-- 1. Select all records from the Products table:
SELECT * FROM Products;

-- 2. Filter products by category 'Electronics':
SELECT * FROM Products WHERE category = 'Electronics';

-- 3. Sort products by price in descending order:
SELECT * FROM Products ORDER BY price DESC;

-- 4. Count the number of interactions:
SELECT COUNT(*) AS interaction_count FROM Interactions;

-- 5. Calculate the total purchase amount for each user:
SELECT user_id, SUM(total_amount) AS total_purchase_amount 
FROM Past_Purchases 
GROUP BY user_id;

-- 6. Retrieve the oldest purchase date:
SELECT MIN(purchase_date) AS oldest_purchase FROM Past_Purchases;

-- 7. Join Products and Interactions to get product details with interaction type:
SELECT p.*, i.interaction_type 
FROM Products p
JOIN Interactions i ON p.product_id = i.product_id;

-- 8. Subquery to find products with more than 10 interactions:
SELECT * FROM Products 
WHERE product_id IN (SELECT product_id FROM Interactions GROUP BY product_id HAVING COUNT(*) > 10);

-- Run the inner query separately to verify if it returns the expected counts of interactions per product:

SELECT product_id, COUNT(*) AS interaction_count 
FROM Interactions 
GROUP BY product_id;

-- 9. Update product price for a specific product:
UPDATE Products SET price = 1500 WHERE product_id = 'P001';

-- 10. Delete an interaction record:
DELETE FROM Interactions WHERE interaction_id = 5;

-- 11. Retrieve the top 5 users with the highest total purchase amount:
SELECT user_id, SUM(total_amount) AS total_purchase_amount 
FROM Past_Purchases 
GROUP BY user_id 
ORDER BY total_purchase_amount DESC 
LIMIT 5;

-- 12. Count the number of unique brands in the Products table:
SELECT COUNT(DISTINCT brand) AS unique_brands FROM Products;

-- 13. Window function to rank products by price within each category:
SELECT product_id, product_name, category, price, 
       RANK() OVER (PARTITION BY category ORDER BY price) AS price_rank
FROM Products;

-- 14. Common Table Expression (CTE) to find the average price of products:
WITH AvgPrice AS (
    SELECT AVG(price) AS average_price FROM Products
)
SELECT * FROM Products WHERE price > (SELECT average_price FROM AvgPrice);

-- 14. Create an index on the user_id column of the Past_Purchases table:
CREATE INDEX idx_user_id ON Past_Purchases(user_id);

-- 15. Retrieve the product with the highest total purchase amount:
SELECT product_id, SUM(total_amount) AS total_purchase_amount 
FROM Past_Purchases 
GROUP BY product_id 
ORDER BY total_purchase_amount DESC 
LIMIT 1;

-- 16. Create a view to show interactions with product details:
CREATE VIEW InteractionDetails AS
SELECT i.*, p.product_name, p.category, p.brand 
FROM Interactions i
JOIN Products p ON i.product_id = p.product_id;

-- 17. Rollback a transaction if an error occurs while updating interactions:
START TRANSACTION;
UPDATE Interactions SET interaction_type = 'Click' WHERE interaction_id = 10;
SAVEPOINT before_commit;
UPDATE Interactions SET interaction_type = 'View' WHERE interaction_id = 11;
ROLLBACK TO before_commit;
COMMIT;

-- 18. Count the number of interactions per product
SELECT product_id, COUNT(*) AS interaction_count
FROM Interactions
GROUP BY product_id;

-- 19. List top N most popular products based on interactions
SELECT product_id, COUNT(*) AS interaction_count
FROM Interactions
GROUP BY product_id
ORDER BY interaction_count DESC
LIMIT 3;

-- 20. Retrieve product details along with user interactions:
SELECT p.*, i.interaction_type, i.user_id
FROM Products p
INNER JOIN Interactions i ON p.product_id = i.product_id;

-- 21. Find products with no interactions:
SELECT p.*
FROM Products p
LEFT JOIN Interactions i ON p.product_id = i.product_id
WHERE i.product_id IS NULL;

-- 22. Rank products by price within each category using window functions:
SELECT product_id, product_name, category, price,
       RANK() OVER (PARTITION BY category ORDER BY price) AS price_rank
FROM Products;

-- 24. Calculate the cumulative sum of total purchases by user:
SELECT user_id, purchase_id, total_amount,
       SUM(total_amount) OVER (PARTITION BY user_id ORDER BY purchase_id) AS cumulative_sum
FROM Past_Purchases;

-- 25. Find products purchased more than once:
SELECT * 
FROM Products
WHERE product_id IN (
    SELECT product_id
    FROM Past_Purchases
    GROUP BY product_id
    HAVING COUNT(*) > 1
);

-- 26. Retrieve interactions for products with prices above the average price:
SELECT *
FROM Interactions
WHERE product_id IN (
    SELECT product_id
    FROM Products
    WHERE price > (SELECT AVG(price) FROM Products)
);

-- 27. Create a CTE to calculate average product price by category:
WITH AvgPriceByCategory AS (
    SELECT category, AVG(price) AS avg_price
    FROM Products
    GROUP BY category
)
SELECT p.product_id, p.product_name, p.category, p.price, c.avg_price
FROM Products p
JOIN AvgPriceByCategory c ON p.category = c.category;

-- 28. Use a CTE to find the top 3 users with the highest total purchase amounts:
WITH UserPurchaseTotals AS (
    SELECT user_id, SUM(total_amount) AS total_purchase_amount
    FROM Past_Purchases
    GROUP BY user_id
)
SELECT user_id, total_purchase_amount
FROM UserPurchaseTotals
ORDER BY total_purchase_amount DESC
LIMIT 3;

-- 29. Calculate the percentage contribution of each product to the total sales amount:
WITH ProductSales AS (
    SELECT product_id, SUM(total_amount) AS total_sales
    FROM Past_Purchases
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, p.price, ps.total_sales,
       (ps.total_sales / (SELECT SUM(total_amount) FROM Past_Purchases)) * 100 AS sales_percentage
FROM Products p
JOIN ProductSales ps ON p.product_id = ps.product_id;

-- 30. Identify users who made purchases of more than $500 in a single transaction:
SELECT user_id, purchase_id, total_amount
FROM Past_Purchases
WHERE total_amount > 500;

-- 31. Calculate the average time between consecutive purchases for each user:
WITH UserPurchaseTimes AS (
    SELECT user_id, 
           purchase_date - LAG(purchase_date, 1) OVER (PARTITION BY user_id ORDER BY purchase_date) AS time_diff
    FROM Past_Purchases
)
SELECT user_id, AVG(time_diff) AS avg_time_between_purchases
FROM UserPurchaseTimes
GROUP BY user_id;

-- Above  query uses a window function to calculate the time difference between consecutive purchases for each user. Then, it calculates the average time between purchases for each user.

-- 32. Identify products that have been interacted with but not purchased:
SELECT i.product_id, p.product_name
FROM Interactions i
LEFT JOIN Past_Purchases pp ON i.product_id = pp.product_id
JOIN Products p ON i.product_id = p.product_id
WHERE pp.product_id IS NULL;

-- 33. Find users who made purchases in the first and last quarter of the year:
SELECT user_id
FROM Past_Purchases
WHERE EXTRACT(QUARTER FROM purchase_date) = 1
   OR EXTRACT(QUARTER FROM purchase_date) = 4;

-- 34. Calculate the average quantity of products purchased by users who interacted with products priced above the average price:
WITH InteractedProducts AS (
    SELECT DISTINCT user_id, product_id
    FROM Interactions
),
AvgProductPrice AS (
    SELECT AVG(price) AS avg_price
    FROM Products
)
SELECT ip.user_id, AVG(pp.quantity) AS avg_quantity
FROM InteractedProducts ip
JOIN Products p ON ip.product_id = p.product_id
JOIN Past_Purchases pp ON ip.user_id = pp.user_id AND ip.product_id = pp.product_id
CROSS JOIN AvgProductPrice avgp
WHERE p.price > avgp.avg_price
GROUP BY ip.user_id;

-- 35. Find users who have interacted with products across multiple categories:
SELECT user_id
FROM (
    SELECT user_id, COUNT(DISTINCT category) AS num_categories
    FROM Interactions i
    JOIN Products p ON i.product_id = p.product_id
    GROUP BY user_id
) AS user_categories
WHERE num_categories > 1;











