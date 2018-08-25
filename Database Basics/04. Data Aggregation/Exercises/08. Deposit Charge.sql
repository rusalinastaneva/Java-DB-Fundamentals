USE gringotts;

SELECT `deposit_group`,`magic_wand_creator`, MIN(`deposit_charge`) AS `min_deposit_charge`
FROM wizzard_deposits AS e
GROUP BY e.deposit_group, e.magic_wand_creator
ORDER BY e.magic_wand_creator,e.deposit_group ASC;