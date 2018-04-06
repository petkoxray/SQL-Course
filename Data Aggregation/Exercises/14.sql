CREATE TEMPORARY TABLE IF NOT EXISTS emp as (
    SELECT * FROM employees WHERE salary > 30000
);

DELETE FROM emp WHERE manager_id = 42;

UPDATE emp SET salary = salary + 5000 WHERE department_id = 1;

SELECT department_id, AVG(salary) AS avg_salary
FROM emp
GROUP BY department_id
ORDER BY department_id;
