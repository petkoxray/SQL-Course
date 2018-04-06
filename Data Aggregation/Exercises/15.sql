SELECT department_id, MAX(salary) as max_salary FROM `employees`
GROUP BY department_id
HAVING max_salary NOT BETWEEN 30000 AND 70000
