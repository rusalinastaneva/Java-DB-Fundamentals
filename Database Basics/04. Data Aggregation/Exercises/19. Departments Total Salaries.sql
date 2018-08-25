USE soft_uni;

SELECT e.department_id, ROUND (SUM(e.salary),4) AS `total_salary`
FROM employees AS e
GROUP BY e.department_id
ORDER BY e.department_id ASC;

