USE gringotts;

SELECT `deposit_group`,SUM(`deposit_amount`) AS `total_sum`
FROM wizzard_deposits AS e
GROUP BY e.deposit_group
ORDER BY `total_sum` ASC;