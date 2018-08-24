USE diablo;

SELECT `user_name`, `ip_address` FROM users AS e WHERE e.ip_address LIKE '___.1%.%.___'
ORDER BY e.user_name ASC;