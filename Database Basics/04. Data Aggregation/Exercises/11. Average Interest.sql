USE gringotts;

SELECT e.deposit_group,e.is_deposit_expired,AVG(e.deposit_interest) AS `average_interest`
FROM wizzard_deposits AS e
WHERE e.deposit_start_date > '1985/01/01'
GROUP BY e.deposit_group,e.is_deposit_expired
ORDER BY e.deposit_group DESC, e.is_deposit_expired ASC;
