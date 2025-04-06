-- Creating the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,            -- Unique ID for each employee
    emp_name VARCHAR(50),              -- Full name of the employee
    department VARCHAR(50),            -- Department the employee belongs to
    region VARCHAR(50),                -- Geographical region
    salary INT,                        -- Employee's monthly salary
    hire_date DATE                     -- Date the employee joined the company
);



INSERT INTO employees VALUES (1, 'Alice', 'HR', 'East', 5000, TO_DATE('2020-01-10', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (2, 'Bob', 'HR', 'East', 5200, TO_DATE('2021-03-15', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (3, 'Charlie', 'IT', 'West', 6500, TO_DATE('2020-06-20', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (4, 'David', 'IT', 'West', 6500, TO_DATE('2021-04-12', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (5, 'Eve', 'Finance', 'East', 7000, TO_DATE('2019-11-01', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (6, 'Frank', 'Finance', 'West', 6900, TO_DATE('2022-02-10', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (7, 'Grace', 'HR', 'East', 5300, TO_DATE('2022-05-05', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (8, 'Hank', 'Finance', 'East', 7000, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
