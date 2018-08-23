USE minions;

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(30) UNIQUE NOT NULL,
	password VARCHAR(26) NOT NULL,
	profile_picture BLOB,	
	last_login_time TIME,
	is_deleted BOOL
);

INSERT INTO users (username,password,profile_picture,last_login_time,is_deleted) 
VALUES ('Maria','00000',null,'19:03:00',true),('Mariika','05da00',null,'19:03:00',true),
('Mari','00000',null,'19:03:00',true),('Minka','00msmn000',null,'20:03:00',false),('Gosho','00000',null,'19:03:00',true);

