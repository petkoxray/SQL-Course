SELECT first_name FROM `employees` 
WHERE (department_id = 3 OR department_id = 10)
	AND (YEAR(hire_date) > 1994 AND YEAR(hire_date) < 2006)
