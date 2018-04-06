SELECT e.department_id, MIN(e.salary) AS minimum_salary FROM employees AS e
WHERE (e.department_id = 2 OR e.department_id = 5 OR e.department_id=7) AND hire_date > '2000-01-01'
GROUP BY e.department_id
ORDER BY e.department_id ASC;
