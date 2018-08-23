USE minions;

CREATE TABLE people (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	picture TEXT,
	height FLOAT(6,2),
	weight FLOAT(6,2),
	gender ENUM('m','f') NOT NULL,
	birthdate DATE NOT NULL,
	biography TEXT
);

INSERT INTO people (name,picture,height,weight,gender,birthdate,biography) VALUES
('Gosho','picturejkdn',1234.11,1234.11,'m','2017-11-05','kdfjefmmfWFLLFLMfmvvvvvvvvvvvvvvvvvvvvvvvvv'),
('Ivan','picturdn',1456.11,1456.11,'f','2017-11-05','kdfjefmmfWFLLFLMfmvvvvvvvvvvvvvvvvvvvvvvvvv'),
('Gosh','picturjdnwdn',3456.11,1456.11,'f','2017-11-05','kdfjefmmfWFLLFLMfmvvvvvvvvvvvvvvvvvvvvvvvvv'),
('Pesho','pictwhbdjkdn',1456.11,1456.11,'m','2017-11-05','kdfjefmmfWFLLFLMfmvvvvvvvvvvvvvvvvvvvvvvvvv'),
('Ivo','picthwdbdjkdn',1456.11,1456.11,'f','2017-11-05','kdfjefmmfWFLLFLMfmvvvvvvvvvvvvvvvvvvvvvvvvv');