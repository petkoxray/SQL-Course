SELECT 
	COUNT(c.country_code) as country_count
FROM mountains_countries AS mc
RIGHT JOIN countries AS c ON mc.country_code = c.country_code
WHERE mc.country_code IS NULL
