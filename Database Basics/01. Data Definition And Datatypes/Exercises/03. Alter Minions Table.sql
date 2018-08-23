USE minions;

ALTER TABLE minions 
ADD town_id INT NOT NULL;

ALTER TABLE minions
ADD CONSTRAINT FK_town_minions_id
FOREIGN KEY (`town_id`) REFERENCES towns(id);