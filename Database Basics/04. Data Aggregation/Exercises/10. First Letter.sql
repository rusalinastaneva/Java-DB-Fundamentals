USE gringotts;

SELECT LEFT (first_name,1) AS `first_letter`
FROM wizzard_deposits AS e
WHERE e.deposit_group = 'Troll Chest'
GROUP BY `first_letter`;