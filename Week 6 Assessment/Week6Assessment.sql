-- create employees table
-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY,
--     fullname VARCHAR(50),
--     department VARCHAR(50)
-- )
-- GO
-- -- CREATE SALES TABLE
-- CREATE TABLE sales(
--     id INT PRIMARY KEY,
--     employee_id INT,
--     phone VARCHAR(50),
--     amount decimal(10,2),
-- )
-- GO

-- INSERT DATA INTO THE TABLES
-- INSERT INTO employees (employee_id,fullname,department)VALUES(1,'John Mwangi','Finance'),(2,'James Collins','HR'),(3,'Janet Opiyo','IT'),(4,'Jackline Mwende','Sales'),(5,'Sandra Mills','Production')
-- GO
-- INSERT INTO sales (id,employee_id,phone,amount)VALUES(5,1,'0700748919',100),(6,2,'0700748959',300),(7,2,'0700778919',700),(8,4,'0700744919',600)
-- GO
-- Select employees who did not make any sales
-- SELECT em.* FROM employees em
-- LEFT JOIN sales s on em.employee_id=s.employee_id
-- WHERE s.employee_id IS NULL;

-- -- CREATE customers table
-- CREATE TABLE Customers(
--     CustomerID INT PRIMARY KEY,
--     CustomerName VARCHAR(50),
--     ContactName VARCHAR(50),
--    Address VARCHAR(50),
--    City VARCHAR(50),
--    PostalCode VARCHAR(50),
--    Country VARCHAR(50)
-- )
-- GO
-- insert into customers
-- INSERT INTO Customers (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country)VALUES
-- (1, 'Alfred Michael','Alexa Maina','Ngongo Road','Nairobi','01000','Kenya'),
-- (2, 'John Mwangi','Susanna lulu','Pwani','Mombasa','01000','Kenya'),
-- (3,'Antony Mweru','Jackson Kibet','Makongeni','Thika','01000','Kenya'),
-- (4,'Peterson Kihika','Elizabeth Njambi','China Town','NEW York','0100','USA'),
-- (5,'Johnson Mandela','Gift Achieng','Boston','England','0000','United Kingdom')
-- GO

-- -- select and group by country
-- SELECT Country, COUNT(CustomerID)
-- FROM Customers
-- GROUP BY Country
-- HAVING COUNT(CustomerID)>3
-- -- Write a procedure that caninsert or update the employee table
-- CREATE PROCEDURE InsertorUpdateEmployee
--     @id INT,
--     @dept VARCHAR(50),
--     @name VARCHAR(50)
-- AS
--  MERGE employees AS target
--  USING (SELECT @id,@dept,@name) AS source (id,name,department)
--  on (target.employee_id=source.id)
--  WHEN MATCHED THEN
--  UPDATE SET
--   target.fullname=source.name,
--  target.department=source.department
-- WHEN NOT MATCHED THEN
-- INSERT (employee_id,fullname,department) VALUES (source.id,source.name,source.department);
 
-- execute
-- EXEC InsertorUpdateEmployee @id=3, @name='Johnson',@dept='Audit';

-- fetching duplicate records


CREATE TABLE EmployeeDetails(
    Empid INT PRIMARY KEY,
    name VARCHAR(50),
    Age INT
)
GO

-- INSERT DATA INTO THE EmployeeDetails TABLES
INSERT INTO EmployeeDetails (Empid,name,Age)VALUES(1,'John Mwangi',30),(2,'James Collins',25),(3,'Janet Opiyo',36),(4,'James Collins',25),(5,'Sandra Mills',40)
GO

-- select to fetch duplicate records
SELECT ed.*
FROM EmployeeDetails ed 
JOIN EmployeeDetails e1 on ed.name=e1.name AND ed.Empid <> e1.Empid;
GO

CREATE TABLE MyTables(
    Id INT PRIMARY KEY,
    name VARCHAR(50),
    Age INT
)
GO

-- INSERT DATA INTO THE MyTables TABLES
INSERT INTO MyTables (Id,name,Age)VALUES(1,'John Mwangi',30),(2,'James Collins',25),(3,'Janet Opiyo',36),(4,'James Collins',25),(5,'Sandra Mills',40)
GO

-- Fetch only odd numbers
SELECT *
 FROM(SELECT *, ROW_NUMBER() 
 OVER (ORDER BY Id)as RowNumber FROM MyTables)t 
 WHERE t.RowNumber%2=1;
GO

-- FUNCTION TO  CALCULATE AGE GIVEN DATE OF BIRTH
CREATE FUNCTION AgeCalculator(@dob DATE)
RETURNS INT
AS 
BEGIN
    DECLARE @age INT
    SELECT @age=DATEDIFF(YEAR, @dob,GETDATE())-CASE WHEN DATEADD(YEAR,DATEDIFF(YEAR,@dob,GETDATE()),@dob)>GETDATE() THEN 1 ELSE 0 END
    RETURN @age
END;