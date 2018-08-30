USE camp;

CREATE TABLE mountains(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL
); 

CREATE TABLE peaks(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	mountain_id INT,
	CONSTRAINT fk_mountain_id FOREIGN KEY (`mountain_id`) REFERENCES mountains(id)
); 