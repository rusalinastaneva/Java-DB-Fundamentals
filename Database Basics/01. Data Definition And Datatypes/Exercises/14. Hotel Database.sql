USE minions;

CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	title VARCHAR(30) NOT NULL,
	notes TEXT
);
CREATE TABLE customers(
	account_number INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	phone_number VARCHAR(30),
	emergency_name VARCHAR(20) NOT NULL,
	emergency_number VARCHAR(30) NOT NULL, 
	notes TEXT
);

CREATE TABLE room_status (
	room_status VARCHAR(20) PRIMARY KEY,
	notes TEXT
);

CREATE TABLE room_types (
	room_type VARCHAR(20) PRIMARY KEY,
	notes TEXT
);

CREATE TABLE bed_types (
	bed_type VARCHAR(20) PRIMARY KEY,
	notes TEXT
);
CREATE TABLE rooms(
	room_number INT PRIMARY KEY AUTO_INCREMENT,
	room_type VARCHAR(20) NOT NULL, 
	bed_type VARCHAR(20) NOT NULL, 
	rate INT, 
	room_status VARCHAR(20) NOT NULL, 
	notes TEXT
); 

CREATE TABLE payments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id INT NOT NULL,
	CONSTRAINT employee_id FOREIGN KEY(`employee_id`) REFERENCES employees(`id`),
	payment_date DATE NOT NULL, 
	account_number INT NOT NULL,
	CONSTRAINT account_number FOREIGN KEY(`account_number`) REFERENCES customers(`account_number`),
	first_date_occupied DATE, 
	last_date_occupied DATE, 
	total_days INT NOT NULL, 
	amount_charged DOUBLE NOT NULL, 
	tax_rate DOUBLE NOT NULL, 
	tax_amount DOUBLE NOT NULL, 
	payment_total DOUBLE NOT NULL, 
	notes TEXT
);

CREATE TABLE occupancies (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	employee_id INT NOT NULL,
	CONSTRAINT fk_employee_id FOREIGN KEY(`employee_id`) REFERENCES employees(`id`),
	date_occupied DATE NOT NULL, 
	account_number INT NOT NULL,
	CONSTRAINT fk_account_number FOREIGN KEY(`account_number`) REFERENCES customers(`account_number`),
	room_number INT NOT NULL, 
	rate_applied INT NOT NULL, 
	phone_charge VARCHAR(20) NOT NULL, 
	notes TEXT
);

INSERT INTO bed_types(bed_type) VALUES('King'),('One Person'),('Two Person');
INSERT INTO room_status(room_status) VALUES('Available'),('Not available'),('NA');
INSERT INTO room_types(room_type) VALUES('Studio'),('Apartment'),('S');

INSERT INTO customers(first_name,last_name,emergency_name,emergency_number) VALUES 
('Pena','Penova','AKKS','0239782782'),('Pena','Penova','AKKS','0239782782'),('Pena','Penova','AKKS','0239782782');

INSERT INTO employees(first_name,last_name,title) VALUES ('Goshka','Goshova','sales'),('Goshka','Goshova','sales'),('Goshka','Goshova','sales');

INSERT INTO occupancies(employee_id,date_occupied,account_number,room_number,rate_applied,phone_charge)
VALUES (1,'2017-05-05',1,55,2,'0858454151'),(1,'2017-05-05',1,55,1,'0858454151'),(1,'2017-05-05',1,55,4,'0858454151');

INSERT INTO payments(employee_id,payment_date,account_number,total_days,amount_charged,tax_rate,tax_amount,payment_total)
VALUES (2,'2015-05-08',2,20,5111.04,10.00,211.05,5311.05),(2,'2015-05-08',2,20,5111.04,20.00,211.05,5311.05),(2,'2015-05-08',2,20,5111.04,20.00,211.05,5311.05);

INSERT INTO rooms(room_type,bed_type,room_status) VALUES ('Studio','King','Available'),('Apartment','One Person','NA'),('S','Two Person','Not Available');

