SELECT 
    e.employee_id, e.first_name
FROM employees AS e
WHERE 
    (SELECT COUNT(ep.project_id)
    FROM employees_projects AS ep
    WHERE ep.employee_id = e.employee_id) = 0
ORDER BY e.employee_id DESC
LIMIT 3
