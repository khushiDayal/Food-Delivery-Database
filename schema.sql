-- =====================================
-- Food Delivery Database - Schema
-- Author: Khushi Dayal
-- =====================================

CREATE DATABASE IF NOT EXISTS FoodDeliveryDB;
USE FoodDeliveryDB;

-- ---------------------
-- Table: Customers
-- ---------------------
CREATE TABLE Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  city VARCHAR(100),
  signup_date DATE
);

-- ---------------------
-- Table: Restaurants
-- ---------------------
CREATE TABLE Restaurants (
  restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  cuisine VARCHAR(50),
  rating DECIMAL(2,1)
);

-- ---------------------
-- Table: Delivery_Partners
-- ---------------------
CREATE TABLE Delivery_Partners (
  partner_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  city VARCHAR(100),
  joined_date DATE
);

-- ---------------------
-- Table: Orders
-- ---------------------
CREATE TABLE Orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  restaurant_id INT,
  partner_id INT,
  order_date DATE,
  amount DECIMAL(10,2),
  delivery_time INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
  FOREIGN KEY (partner_id) REFERENCES Delivery_Partners(partner_id)
);