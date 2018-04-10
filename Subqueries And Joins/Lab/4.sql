SELECT COUNT(e.employee_id) FROM employees AS e
WHERE e.salary >(SELECT AVG(salary) FROM employees)
