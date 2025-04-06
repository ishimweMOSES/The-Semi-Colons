-- Creating the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,            -- Unique ID for each employee
    emp_name VARCHAR(50),              -- Full name of the employee
    department VARCHAR(50),            -- Department the employee belongs to
    region VARCHAR(50),                -- Geographical region
    salary INT,                        -- Employee's monthly salary
    hire_date DATE                     -- Date the employee joined the company
);

-- inserting into table employees

INSERT INTO employees VALUES (1, 'Alice', 'HR', 'East', 5000, TO_DATE('2020-01-10', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (2, 'Bob', 'HR', 'East', 5200, TO_DATE('2021-03-15', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (3, 'Charlie', 'IT', 'West', 6500, TO_DATE('2020-06-20', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (4, 'David', 'IT', 'West', 6500, TO_DATE('2021-04-12', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (5, 'Eve', 'Finance', 'East', 7000, TO_DATE('2019-11-01', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (6, 'Frank', 'Finance', 'West', 6900, TO_DATE('2022-02-10', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (7, 'Grace', 'HR', 'East', 5300, TO_DATE('2022-05-05', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (8, 'Hank', 'Finance', 'East', 7000, TO_DATE('2023-01-01', 'YYYY-MM-DD'));


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



--Rank within each department
SELECT 
  emp_id, emp_name, department, salary,
  RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_standard,
  DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_dense
FROM employees;



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
