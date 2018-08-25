USE soft_uni;

CREATE TEMPORARY TABLE IF NOT EXISTS table2 AS (SELECT* FROM employees AS e WHERE e.salary > 30000);

DELETE FROM table2 WHERE manager_id = 42;

UPDATE table2 SET salary = salary + 5000 WHERE department_id = 1;

SELECT department_id, AVG(salary) AS `avg_salary` FROM table2
GROUP BY department_id
ORDER BY department_id ASC;