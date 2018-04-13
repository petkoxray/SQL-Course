SELECT 
	e.employee_id,
	CONCAT_WS(' ', e.first_name, e.last_name) as employee_name,
	CONCAT_WS(' ', me.first_name, me.last_name) as manager_name,
	d.name
FROM employees AS e
INNER JOIN employees AS me ON me.employee_id = e.manager_id
INNER JOIN departments AS d on e.department_id = d.department_id
WHERE e.manager_id IS NOT NULL
ORDER BY e.employee_id
LIMIT 5
