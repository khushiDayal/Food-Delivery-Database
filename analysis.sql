-- =====================================
-- Food Delivery Database - Analysis Queries
-- =====================================

USE FoodDeliveryDB;

-- 1️⃣ Top Restaurants by Order Count
SELECT r.name AS Restaurant, COUNT(o.order_id) AS Total_Orders
FROM Orders o
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.name
ORDER BY Total_Orders DESC;

-- 2️⃣ Average Delivery Time by City
SELECT c.city AS City, ROUND(AVG(o.delivery_time),1) AS Avg_Delivery_Time
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY Avg_Delivery_Time;

-- 3️⃣ Repeat Customers (More than 1 Order)
SELECT c.name AS Customer, COUNT(o.order_id) AS Total_Orders
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1
ORDER BY Total_Orders DESC;

-- 4️⃣ Most Popular Cuisine
SELECT r.cuisine AS Cuisine, COUNT(o.order_id) AS Total_Orders
FROM Orders o
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.cuisine
ORDER BY Total_Orders DESC
LIMIT 1;

-- 5️⃣ Average Order Value per Delivery Partner
SELECT dp.name AS Delivery_Partner, ROUND(AVG(o.amount),2) AS Avg_Order_Value, COUNT(o.order_id) AS Orders_Handled
FROM Orders o
JOIN Delivery_Partners dp ON o.partner_id = dp.partner_id
GROUP BY dp.name
ORDER BY Avg_Order_Value DESC;

-- 6️⃣ Daily Revenue Trend
SELECT order_date AS Date, SUM(amount) AS Daily_Revenue, COUNT(order_id) AS Orders_Processed
FROM Orders
GROUP BY order_date
ORDER BY order_date;

-- 7️⃣ Top Customers by Total Spend
SELECT c.name AS Customer, SUM(o.amount) AS Total_Spent, COUNT(o.order_id) AS Total_Orders
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY Total_Spent DESC
LIMIT 5;