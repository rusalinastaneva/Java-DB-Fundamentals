USE diablo;

SELECT `name`, DATE_FORMAT(`start`, '%Y-%m-%d') FROM games AS e WHERE EXTRACT(YEAR FROM `start`) BETWEEN 2011 AND 2012
ORDER BY e.`start` ASC, e.name ASC LIMIT 50;