SELECT deposit_group, is_deposit_expired, AVG(deposit_interest) FROM wizzard_deposits
WHERE YEAR(deposit_start_date) > 1984
GROUP BY deposit_group, is_deposit_expired
ORDER BY deposit_group DESC, is_deposit_expired ASC
