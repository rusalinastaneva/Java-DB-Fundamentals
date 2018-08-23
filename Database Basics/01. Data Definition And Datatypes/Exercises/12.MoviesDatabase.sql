CREATE DATABASE IF NOT EXISTS movies;
USE movies;

CREATE TABLE directors (
	id INT PRIMARY KEY AUTO_INCREMENT,
	director_name VARCHAR(20) NOT NULL,
	notes TEXT
);

CREATE TABLE genres(
	id INT PRIMARY KEY AUTO_INCREMENT,
	genre_name VARCHAR(20) NOT NULL,
	notes TEXT
);
CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
	category_name VARCHAR(50) NOT NULL,
	notes TEXT
);
CREATE TABLE movies(
		id INT PRIMARY KEY AUTO_INCREMENT,
		title VARCHAR(50) NOT NULL,
		director_id INT NOT NULL,
		copyright_year YEAR NOT NULL,
		length TIMESTAMP NOT NULL, 
		genre_id INT NOT NULL,
		category_id INT NOT NULL,
		rating INT,
		notes TEXT
);

INSERT INTO directors (director_name) VALUES('Lee'),('Lee'),('Lee'),('Lee'),('Lee');
INSERT INTO genres(genre_name) VALUES ('action'),('action'),('action'),('action'),('action');
INSERT INTO categories(category_name) VALUES('cat1'),('cat1'),('cat1'),('cat1'),('cat1');

INSERT INTO movies (title,director_id,copyright_year,length,genre_id,category_id) VALUES
('Title1',1,'1950','2018-05-30 02:55:00',1,1),('Title1',1,'1950','2018-05-30 02:55:00',1,1),('Title1',1,'1950','2018-05-30 02:55:00',1,1),
('Title1',1,'1950','2018-05-30 02:55:00',1,1),('Title1',1,'1950','2018-05-30 02:55:00',1,1);
