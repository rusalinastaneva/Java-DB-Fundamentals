USE gringotts;

CREATE VIEW v_wd AS
SELECT 
 		e.deposit_amount AS `host_wizard_deposit`,
      e1.deposit_amount AS `guest_wizard_deposit`

FROM wizzard_deposits AS e, wizzard_deposits AS e1
WHERE e.id + 1 = e1.id;

SELECT SUM(host_wizard_deposit - guest_wizard_deposit) AS `sum_difference`
FROM v_wd;