

--Rank within each department

SELECT 
  emp_id, emp_name, department, salary,
  RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_standard,
  DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_dense
FROM employees;