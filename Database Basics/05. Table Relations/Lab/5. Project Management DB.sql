CREATE DATABASE IF NOT EXISTS project_management;
USE project_management;

CREATE TABLE clients (
	id INT PRIMARY KEY AUTO_INCREMENT,
	client_name VARCHAR(100),
	project_id INT
);

CREATE TABLE projects (
	id INT PRIMARY KEY AUTO_INCREMENT,
	client_id INT,
	project_lead_id INT
);

CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	project_id INT
);

ALTER TABLE clients
ADD CONSTRAINT fk_client_project_id FOREIGN KEY(project_id) REFERENCES projects(id);

ALTER TABLE projects
ADD CONSTRAINT fk_client_id FOREIGN KEY(client_id) REFERENCES clients(id),
ADD CONSTRAINT fk_project_lead_id FOREIGN KEY(project_lead_id) REFERENCES employees(id);

ALTER TABLE employees
ADD CONSTRAINT fk_project_id FOREIGN KEY(project_id) REFERENCES projects(id);

