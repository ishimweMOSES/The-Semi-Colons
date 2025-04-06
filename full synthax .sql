-- Creating the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,            -- Unique ID for each employee
    emp_name VARCHAR(50),              -- Full name of the employee
    department VARCHAR(50),            -- Department the employee belongs to
    region VARCHAR(50),                -- Geographical region
    salary INT,                        -- Employee's monthly salary
    hire_date DATE                     -- Date the employee joined the company
);
