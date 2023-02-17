-- create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    fullname VARCHAR(50),
    department VARCHAR(50)
)
GO;
-- CREATE SALES TABLE
CREATE TABLE sales(
    id INT PRIMARY KEY,
    employee_id INT,
    phone VARCHAR(50),
    email VARCHAR(50),
    amount decimal(10,2),
    city VARCHAR(50)

)
GO;
    employee_id INT PRIMARY KEY,
    fullname VARCHAR(50),
    department VARCHAR(50)
-- INSERT DATA INTO THE TABLES
INSERT INTO employees (employee_id,fullname,)



