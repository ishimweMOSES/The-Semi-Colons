
-- compare with previous and next record

SELECT emp_id,
       emp_name,
       department,
       region,
       salary,
       hire_date,
       salary - LAG(salary) OVER (ORDER BY emp_id) AS diff_prev,
       salary - LEAD(salary) OVER (ORDER BY emp_id) AS diff_next,
       CASE 
           WHEN salary > LAG(salary) OVER (ORDER BY emp_id) THEN 'HIGHER'
           WHEN salary < LAG(salary) OVER (ORDER BY emp_id) THEN 'LOWER'
           ELSE 'EQUAL'
       END AS compare_prev
FROM employees;