SELECT 
   e.employee_id, e.job_title, e.address_id, a.address_text  
FROM employees AS e
INNER JOIN addresses as a ON a.address_id = e.address_id
ORDER BY a.address_id ASC
LIMIT 5
