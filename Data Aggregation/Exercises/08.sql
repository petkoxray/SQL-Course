SELECT
  deposit_group,
  magic_wand_creator,
  MIN(deposit_charge) as min_deposit_charge
FROM
  `wizzard_deposits`
GROUP BY
  magic_wand_creator,
  deposit_group
ORDER BY magic_wand_creator ASC, deposit_group ASC
