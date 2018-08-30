USE soft_uni;

SELECT em.first_name, em.last_name, em.department_id
FROM employees AS em

JOIN
	(SELECT e.department_id, AVG(e.salary) AS `average_salary`
	FROM employees AS e
	GROUP BY department_id) AS `avg_salaries`
	
	ON em.department_id = avg_salaries.department_id
	WHERE em.salary > avg_salaries.average_salary

ORDER BY em.department_id ASC
LIMIT 10;