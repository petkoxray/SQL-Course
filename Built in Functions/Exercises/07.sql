SELECT town_id, name FROM `towns` 
WHERE name REGEXP '^[^R|B|D]'
ORDER BY name
