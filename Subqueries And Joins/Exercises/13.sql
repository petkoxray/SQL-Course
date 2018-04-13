SELECT mc.country_code, COUNT(m.mountain_range)  FROM mountains AS m
INNER JOIN mountains_countries AS mc ON mc.mountain_id = m.id
WHERE mc.country_code IN ( 'US', 'BG', 'RU')
GROUP BY mc.country_code
ORDER BY COUNT(m.mountain_range) DESC

