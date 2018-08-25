USE gringotts;

SELECT `deposit_group`
FROM wizzard_deposits AS e
GROUP BY `deposit_group`
ORDER BY AVG(`magic_wand_size`) ASC
LIMIT 1;