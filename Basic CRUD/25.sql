SELECT c.country_name, c.country_code,
	CASE
		WHEN c.currency_code != 'EUR' THEN 'Not Euro'
		ELSE 'Euro'
		END AS `currency`
FROM countries AS c
	ORDER BY c.country_name
