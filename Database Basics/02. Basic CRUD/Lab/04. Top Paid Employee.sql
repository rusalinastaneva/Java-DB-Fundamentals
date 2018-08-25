USE hospital;

CREATE VIEW v_top_paid AS
SELECT* FROM employees AS e ORDER BY e.salary DESC LIMIT 1;

SELECT* FROM v_top_paid;