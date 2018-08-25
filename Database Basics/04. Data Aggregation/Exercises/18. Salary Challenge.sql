USE soft_uni;

SELECT e1.first_name, e1.last_name, e1.department_id
FROM employees AS e1,

	(SELECT e1.department_id, AVG(e1.salary) AS `average_salary`
	FROM employees AS e1
	GROUP BY department_id) AS `avg_salary_ByDepartments`
	
	WHERE e1.department_id = `avg_salary_ByDepartments`.department_id
	AND e1.`salary` > `avg_salary_ByDepartments`.`average_salary`

ORDER BY e1.department_id ASC
LIMIT 10;

