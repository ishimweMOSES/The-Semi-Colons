-- Creating the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,            -- Unique ID for each employee
    emp_name VARCHAR(50),              -- Full name of the employee
    department VARCHAR(50),            -- Department the employee belongs to
    region VARCHAR(50),                -- Geographical region
    salary INT,                        -- Employee's monthly salary
    hire_date DATE                     -- Date the employee joined the company
);


-- Inserting employee records into the table
INSERT INTO employees VALUES
(1, 'Alice', 'HR', 'East', 5000, '2020-01-10'),
(2, 'Bob', 'HR', 'East', 5200, '2021-03-15'),
(3, 'Charlie', 'IT', 'West', 6500, '2020-06-20'),
(4, 'David', 'IT', 'West', 6500, '2021-04-12'),
(5, 'Eve', 'Finance', 'East', 7000, '2019-11-01'),
(6, 'Frank', 'Finance', 'West', 6900, '2022-02-10'),
(7, 'Grace', 'HR', 'East', 5300, '2022-05-05'),
(8, 'Hank', 'Finance', 'East', 7000, '2023-01-01');
