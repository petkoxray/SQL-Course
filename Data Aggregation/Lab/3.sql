SELECT department_id, ROUND(MIN(salary), 2) as min_salary from employees
GROUP BY department_id
HAVING min_salary > 800
