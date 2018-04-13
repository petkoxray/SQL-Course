SELECT 
    e.employee_id, e.first_name, e.manager_id, me.first_name
FROM employees AS e
INNER JOIN employees AS me ON me.employee_id = e.manager_id
WHERE e.manager_id = 3 or e.manager_id = 7
ORDER BY e.first_name ASC
