USE soft_uni;

SELECT COUNT(e.`salary`)
FROM employees AS e
WHERE e.manager_id IS NULL;

