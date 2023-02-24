-- 1. Create two tables, employees and sales. Get a list of all employees who did not make any sales.  
CREATE TABLE employees(
    id INT PRIMARY KEY,
    full_name VARCHAR(250)
);
CREATE TABLE sales(
    id INT PRIMARY KEY,
    employees_id INT,
    items_sold INT
);

-- Insert data into the tables
INSERT INTO employees (id,full_name) VALUES (101,'Johnson Kimathi'),(102,'Jason Collins'),(103,'Amanda Mwema'),(104, 'Annastacia Gemini'),(105,'Trevor Hart'),(106, 'Jane Doe');
INSERT INTO sales (id,employees_id,items_sold) VALUES (1,101,100),(2,106,200),(3,104,600),(4,106,500),(5,105,300),(6,105,500);

SELECT * FROM employees;
SELECT * from sales;

SELECT e.full_name,s.items_sold 
FROM employees e
LEFT JOIN sales s ON e.id=s.employees_id
WHERE s.employees_id IS NULL;
-- 2. Assuming you have Customers table; with columns CustomerID, CustomerName, ContactName, Address, City, PostalCode and Country. Write a query to list the number of customers in each country; only include countries with more than 3 customers   , use ORDER BY too. 
CREATE TABLE Customers(
 CustomerID INT PRIMARY KEY,
 CustomerName VARCHAR(50),
 ContactName VARCHAR(50), 
 Address VARCHAR(50), 
 City VARCHAR(50), 
 PostalCode INT,
 Country VARCHAR(50)
);
INSERT INTO Customers(CustomerID,CustomerName, ContactName, Address, City, PostalCode,Country) 
VALUES 
(1001,'Jena Jackson','123','21 WalL Street','New York',2106,'USA'),
(1002,'James Jackson',' james','Nyaribo','Nyeri',254,'Kenya'),
(1003,'Ebenezer Ekuweme','Jane','Village','Abuja',244,'Nigeria'),
(1004,'Abraham Mula','Luke','Cairo','Cairo',233,'Egypt'),
(1005,'Jane Mwangi','Jack','Karatina','Nyeri',254,'Kenya'),
(1006,'Aki Popo','Allan','Village','Lagos',244,'Nigeria'),
(1007,'Tony Mwangi','linet','Blue Post','Thika',254,'Kenya'),
(1008,'Patience','Hannah','Village','Abuja',244,'Nigeria'),
(1009,'Barrack Obama','Jackson','21 WalL Street','New York',2106,'USA'),
(1010,'William Kingston','Kelly','Boston','England',210,'UK'),
(1011,'mitchell Jay','Mark','21 WalL Street','New York',2106,'USA'),
(1012,'Mbona Mpotevu','Kevin','Congo','Congo',207,'Congo'),
(1013,'Jena Jackson','123','21 WalL Street','New York',2106,'USA'),
(1014,'James Jackson',' james','Nyaribo','Nyeri',254,'Kenya'),
(1015,'Ebenezer Ekuweme','Jane','Village','Abuja',244,'Nigeria'),
(1016,'Abraham Mula','Luke','Cairo','Cairo',233,'Egypt'),
(1017,'Jane Mwangi','Jack','Karatina','Nyeri',254,'Kenya'),
(1018,'Aki Popo','Allan','Village','Lagos',244,'Nigeria'),
(1019,'Tony Mwangi','linet','Blue Post','Thika',254,'Kenya'),
(1020,'Patience','Hannah','Village','Abuja',244,'Nigeria'),
(1021,'Barrack Obama','Jackson','21 WalL Street','New York',2106,'USA'),
(1022,'William Kingston','Kelly','Boston','England',210,'UK'),
(1023,'mitchell Jay','Mark','21 WalL Street','New York',2106,'USA'),
(1024,'Mbona Mpotevu','Kevin','Congo','Congo',207,'Congo');

SELECT Country, COUNT(CustomerID) AS Total_Customers
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID)>3
ORDER BY Country;
-- 3. Write one procedure that can insert or update the employee (avoid using if statement to check the statement e.g., if (statement ==’Insert)) 
-- CREATE PROCEDURE Insert_UpdateEmployee
-- @id INT,
-- @fullname VARCHAR(50)
-- AS
-- BEGIN
-- MERGE employees AS INFO
-- USING (SELECT @id,@fullname) AS source (id,full_name)
-- ON(INFO.id=source.id)
-- WHEN MATCHED THEN
--     UPDATE SET
--         INFO.full_name=source.full_name
-- WHEN NOT MATCHED THEN
--     INSERT (id,full_name) 
--     VALUES (source.id,source.full_name);
-- END
EXEC Insert_UpdateEmployee @id=107, @fullname='John Doe';
SELECT * FROM employees
-- 4. Write an SQL query to fetch duplicate records from EmployeeDetails (without considering the primary key – EmpId)(create dummy data to use) 
CREATE TABLE EmployeeDetails(
    Empid INT PRIMARY KEY,
    name VARCHAR(50),
    Age INT
)
GO

-- INSERT DATA INTO THE EmployeeDetails TABLES
INSERT INTO EmployeeDetails (Empid,name,Age)VALUES(100,'Patrick Gachanja',20),(101,'Donald Trump',25),(102,'Jane Doe',36),(104,'John Doe',25),(103,'Patrick Gachanja',20)
GO

-- select to fetch duplicate records
SELECT ed.*
FROM EmployeeDetails ed 
JOIN EmployeeDetails e1 on ed.name=e1.name AND ed.Empid <> e1.Empid;
GO

-- 5. Write an SQL query to fetch only odd rows from the table (create dummy data to use) 
CREATE TABLE Employees_tb(
    Id INT PRIMARY KEY,
    name VARCHAR(50),
    Age INT
)
GO

-- INSERT DATA INTO THE Employees_tb TABLES
INSERT INTO Employees_tb (Id,name,Age)VALUES (101,'Johnson Kimathi',30),(102,'Jason Collins',40),(103,'Amanda Mwema',60),(104, 'Annastacia Gemini',70),(105,'Trevor Hart',23),(106, 'Jane Doe',55);
GO

-- Fetch only odd numbers
SELECT *
 FROM(SELECT *, ROW_NUMBER() 
 OVER (ORDER BY Id)as Rows FROM Employees_tb)et 
 WHERE et.RowS%2=1;
GO
-- 6. Write a function that can calculate age given a certain date of birth.

-- CREATE FUNCTION my_age(@dob DATE)
-- RETURNS INT
-- BEGIN
-- DECLARE @age INT;
-- SET @age = DATEDIFF(year, @dob , GETDATE())
-- IF (DATEADD(year, @age,@dob) > GETDATE()) 
-- SET @age= @age -1;
-- RETURN @age;
-- END

SELECT [dbo].[my_age]('2001-01-10');