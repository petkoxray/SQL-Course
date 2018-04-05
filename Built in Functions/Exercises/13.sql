SELECT user_name, SUBSTRING(email, LOCATE('@', email) + 1) as `Email Provider` FROM `users` WHERE 1
ORDER BY `Email Provider`, user_name
