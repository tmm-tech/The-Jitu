-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

CREATE TABLE STATION(
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(21),
    LAT_N FLOAT,
    LONG_W FLOAT
);

INSERT INTO STATION 
VALUES 
(1,'New York','New York',40.71,74.00),
(2,'Houston','Texas',34.05,118.24),
(3,'Chicago','Illinois',41.88,87.63),
(4,'Los Angeles','California',29.76,95.37),
(5,'Bengaluru','Karnataka',12.97,77.59),
(6,'Mumbai','Maharashtra',19.07,72.87),
(7,'New York','New York',40.71,74.00),
(8,'Algeria','Africa',34.05,118.24),
(9,'England','UK',41.88,87.63),
(10,'Uruguay','Uruguay',29.76,95.37),
(11,'Orland','UK',12.97,77.59),
(12,'iran','Irag',19.07,72.87);


SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE FROM STATION;

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%' AND
 CITY NOT LIKE 'E%' AND
 CITY NOT LIKE 'I%' AND
 CITY NOT LIKE 'O%' AND
 CITY NOT LIKE 'U%' AND
 CITY NOT LIKE '%A' AND
 CITY NOT LIKE '%E' AND
 CITY NOT LIKE '%I' AND
 CITY NOT LIKE '%O' AND
 CITY NOT LIKE '%U';

--  Query the Name of any student in STUDENTS who scored higher than  Marks. 
-- Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters 
-- (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
 CREATE TABLE STUDENTS(
     ID INTEGER PRIMARY KEY,
     Name VARCHAR(21),
     Marks INTEGER
 );

INSERT INTO STUDENTS VALUES
(1,'Ashley',81),
(2,'Samantha',75),
(4,'Julia',76),
(3,'Belvet',84);

SELECT Name 
FROM STUDENTS 
WHERE Marks >75;

-- Write a query that prints a list of employee names 
-- (i.e.: the name attribute) for employees 
-- in Employee having a salary greater than  per month 
-- who have been employees for less than  months. Sort your result by ascending employee_id.

CREATE TABLE Employee(
    employee_id INTEGER,
    name VARCHAR(25),
    months INTEGER,
    salary INTEGER
);

INSERT INTO Employee VALUES
(12228,'Rose',15,1968),
(33645,'Angela',1,3443),
(45692,'Frank',17,1608),
(56118,'Patrick',7,1345),
(59725,'Lisa',11,2330),
(74197,'Kimberly',16,4372),
(78454,'Bonnie',8,1771),
(83565,'Michael',6,2017),
(98607,'Todd',5,3396),
(99989,'Joe',9,3573);

SELECT name FROM Employee
WHERE salary > 2000
AND months < 10
ORDER BY employee_id;


-- Query all columns (attributes) for every row in the CITY table.
CREATE TABLE CITY(
    ID INTEGER PRIMARY KEY,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INTEGER
);

INSERT INTO CITY VALUES
(1,'Tokyo','JPN','Tokyo',13929286),
(2,'Delhi','IND','Delhi',16787941),
(3,'Shanghai','CHN','Shanghai',24256800),
(4,'Sau Paulo','BRA','Sao Paulo',12106920),
(5,'Mumbai','IND','Maharashtra',12691836),
(6,'Beijing','CHN','Beijing',21516000),
(7,'Istanbul','TUR','Istanbul',1502923),
(8,'Karachi','PAK','Sindh',14910352),
(9,'Dhaka','BGD','Dhaka',10356500),
(10,'Moscow','RUS','Moscow',12506468);

SELECT * FROM CITY;