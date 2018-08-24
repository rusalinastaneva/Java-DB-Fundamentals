USE soft_uni;

SELECT `first_name` FROM employees 
WHERE EXTRACT(YEAR FROM `hire_date`) BETWEEN 1995 AND 2005 AND `department_id` IN(3,10)
ORDER BY employee_id ASC;