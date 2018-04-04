SELECT CONCAT_WS(' ', first_name, last_name) as 'Full Name', DATEDIFF(died, born) as 'Days Lived' FROM `authors`
