SELECT department_id, ROUND(AVG(salary), 2) as 'Average salary' FROM `employees`
GROUP BY department_id
