-- =====================================
-- Food Delivery Database - Sample Data
-- =====================================

USE FoodDeliveryDB;

-- ---------------------
-- Customers
-- ---------------------
INSERT INTO Customers (name, city, signup_date) VALUES
('Asha Patel','Gurugram','2024-05-10'),
('Rohit Sharma','Delhi','2024-07-21'),
('Neha Singh','Noida','2024-08-03'),
('Vikram Rao','Gurugram','2024-09-11'),
('Sana Khan','Delhi','2024-10-02');

-- ---------------------
-- Restaurants
-- ---------------------
INSERT INTO Restaurants (name, cuisine, rating) VALUES
('Spice Hub','Indian',4.3),
('Noodle House','Chinese',4.0),
('Green Bowl','Healthy',4.6),
('Pizza Point','Italian',4.1),
('Tandoori Express','Indian',4.2);

-- ---------------------
-- Delivery Partners
-- ---------------------
INSERT INTO Delivery_Partners (name, city, joined_date) VALUES
('Amit Kumar','Gurugram','2024-04-01'),
('Pooja Verma','Delhi','2024-06-15'),
('Suresh Patel','Noida','2024-07-10'),
('Rahul Joshi','Gurugram','2024-08-20'),
('Maya Rani','Delhi','2024-09-05');

-- ---------------------
-- Orders
-- ---------------------
INSERT INTO Orders (customer_id, restaurant_id, partner_id, order_date, amount, delivery_time) VALUES
(1,1,1,'2024-11-01',350.00,28),
(2,2,2,'2024-11-01',220.00,35),
(3,3,3,'2024-11-02',420.00,22),
(4,4,4,'2024-11-02',600.00,40),
(5,5,5,'2024-11-03',450.00,30),
(1,2,1,'2024-11-04',180.00,25),
(2,1,2,'2024-11-04',300.00,33),
(3,4,3,'2024-11-05',520.00,45),
(4,3,4,'2024-11-05',260.00,20),
(5,2,5,'2024-11-06',210.00,27),
(1,5,1,'2024-11-06',480.00,31),
(2,4,2,'2024-11-07',610.00,38),
(3,1,3,'2024-11-07',340.00,29),
(4,2,4,'2024-11-08',200.00,26),
(5,3,5,'2024-11-08',430.00,24),
(1,4,1,'2024-11-09',560.00,42),
(2,3,2,'2024-11-09',395.00,34),
(3,5,3,'2024-11-10',470.00,28),
(4,1,4,'2024-11-10',320.00,30),
(5,2,5,'2024-11-11',190.00,21);