CREATE DATABASE IF NOT EXISTS car_rental;
USE car_rental;

CREATE TABLE categories(
 	id INT PRIMARY KEY AUTO_INCREMENT,
 	category VARCHAR(20) NOT NULL,
 	daily_rate DOUBLE NOT NULL,
 	weekly_rate DOUBLE NOT NULL,
 	monthly_rate DOUBLE NOT NULL,
 	weekend_rate DOUBLE NOT NULL
);

CREATE TABLE cars(
	id INT PRIMARY KEY AUTO_INCREMENT,
	plate_number VARCHAR(15) NOT NULL,
	make VARCHAR(20),
	model VARCHAR(20) NOT NULL,
	car_year YEAR,
	category_id INT NOT NULL,
	doors INT NOT NULL,
	picture BLOB,
	car_condition VARCHAR(50),
	available bool NOT NULL
);

CREATE TABLE employees(
		id INT PRIMARY KEY AUTO_INCREMENT,
		first_name VARCHAR(20) NOT NULL,
		last_name VARCHAR(20) NOT NULL,
		title VARCHAR(20) NOT NULL,
		notes TEXT
); 
CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	driver_licence_number VARCHAR(30) NOT NULL,
	full_name VARCHAR(50) NOT NULL,
	address VARCHAR(80),
	city VARCHAR(50),
	zip_code INT,
	notes TEXT
);
CREATE TABLE rental_orders (
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id INT NOT NULL,
	customer_id INT NOT NULL,
	car_id INT NOT NULL,
	car_condition VARCHAR(50) NOT NULL,
	tank_level INT,
	kilometrage_start INT,
	kilometrage_end INT,
	total_kilometrage INT NOT NULL,
	start_date DATE,
	end_date DATE,
	total_days INT NOT NULL,
	rate_applied DOUBLE NOT NULL,
	tax_rate DOUBLE NOT NULL,
	order_status VARCHAR(30) NOT NULL,
	notes TEXT
);
INSERT INTO categories(category,daily_rate,weekly_rate,monthly_rate,weekend_rate) VALUES('van',60,180,200,55.22),
('sedan',60,180,2000,55.22),
('bus',60,1800,200,55.22);

INSERT INTO customers(driver_licence_number,full_name) VALUES ('0014647777','Penko Penev'),
('00014647777','Penko Penev'),('014647777','Penko Penev');

INSERT INTO cars(plate_number,model,category_id,doors,available) VALUES ('0125163','Corolla',2,4,true),
('0125163','Civic',3,4,true),('0125163','Rav-4',1,4,false);

INSERT INTO employees(first_name,last_name,title) VALUES ('Ginka','Koleva','sales assistant'),('Goshka','Koleva','sales assistant'),
('Minka','Koleva','sales director');

INSERT INTO rental_orders(employee_id,customer_id,car_id,car_condition,total_kilometrage,total_days,rate_applied,tax_rate,order_status)
VALUES (1,1,1,'good',10000,55,10.01,15.22,'completed'),
(1,2,1,'good',12000,55,20,15.22,'completed'),	
(1,3,2,'good',15000,55,50,15.22,'completed');