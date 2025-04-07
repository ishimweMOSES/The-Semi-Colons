
--first 2 employees per department

WITH first_emps AS (
  SELECT emp_id,
         emp_name,
         department,
         region,
         salary,
         hire_date,
         ROW_NUMBER() OVER (PARTITION BY department ORDER BY hire_date) AS row_num
  FROM employees
)
SELECT * FROM first_emps
WHERE row_num <= 2;
