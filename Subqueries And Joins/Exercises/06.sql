SELECT 
    e.first_name, e.last_name, e.hire_date, d.name
FROM employees AS e
INNER JOIN departments AS d ON d.department_id = e.department_id
WHERE d.name IN ('Sales', 'Finance') AND DATE(e.hire_date) >'1999-01-01'
ORDER BY e.hire_date ASC

