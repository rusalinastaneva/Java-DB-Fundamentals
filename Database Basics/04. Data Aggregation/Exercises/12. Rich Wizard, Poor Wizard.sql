USE gringotts;

SELECT SUM(diff.next) AS `sum_difference`

FROM (
	SELECT deposit_amount - 
		(SELECT deposit_amount
	 	 FROM wizzard_deposits
	 	 WHERE id = e.id + 1) AS next
	FROM wizzard_deposits AS e) AS diff;

