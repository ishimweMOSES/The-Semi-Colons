
-- synthax for top 3 highest salaries per sales department 

WITH ranked_emps AS (
  SELECT emp_id,
         emp_name,
         department,
         region,
         salary,
         hire_date,
         RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_position
  FROM employees
)
SELECT * FROM ranked_emps
WHERE rank_position <= 3;
