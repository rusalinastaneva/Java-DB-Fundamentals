USE restaurant;

SELECT department_id, COUNT(department_id) AS `Number of employees` FROM employees AS e
GROUP BY e.department_id;