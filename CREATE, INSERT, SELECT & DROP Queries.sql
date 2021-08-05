--Create Database
--The CREATE DATABASE statement is used to create a new SQL database.
--Syntax => CREATE DATABASE databasename;
CREATE DATABASE SQLBasicLearning;

--Create Tables
--The CREATE TABLE statement is used to create a new table in a database.
/*Syntax => CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);*/
CREATE TABLE EMPLOYEE
(
	EMPLOYEE_ID NUMERIC(20) PRIMARY KEY,
	EMPLOYEE_NAME NVARCHAR(40),
	EMPLOYEE_ADDRESS NVARCHAR(100),
	EMPLOYEE_DEPARTMENT NVARCHAR(40)
);

CREATE TABLE COURSE
(
	COURSE_ID NUMERIC(2),
	EMPLOYEE_ID NUMERIC(20),
	COURSE_NAME NVARCHAR(40),
	COURSE_STARTDATE DATE
);



--Insert Data to Tables
/*The INSERT INTO statement is used to insert new records in a table.
INSERT INTO Syntax
It is possible to write the INSERT INTO statement in two ways:
1. Specify both the column names and the values to be inserted:
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. 
However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:
INSERT INTO table_name
VALUES (value1, value2, value3, ...);*/

--Table EMPLOYEE
INSERT INTO EMPLOYEE
VALUES(1186554,'Komal Navale','Seawoods','SBI');

INSERT INTO EMPLOYEE
VALUES(142065,'Rupesh Kothari','Powai','Citi Bank');

INSERT INTO EMPLOYEE
VALUES(1100335,'Pankajkumar Kapase','Powai','CPPIB');

INSERT INTO EMPLOYEE
VALUES(342966,'Suyog Gambhirrao','Thane','OTPP');

--Table COURSE
INSERT INTO COURSE
VALUES(01,1186554,'Cloud Computing','2021-08-10');

INSERT INTO COURSE
VALUES(02,1186554,'Data Structures and Algorithms','2021-08-11');

INSERT INTO COURSE
VALUES(06,1186554,'Agile Software Processes','2021-08-12');

INSERT INTO COURSE
VALUES(02,342966,'Data Structures and Algorithms','2021-08-11');

INSERT INTO COURSE
VALUES(03,342966,'Software Product Management','2021-08-10');

INSERT INTO COURSE
VALUES(04,142065,'Software Testing Methodologies','2021-08-11');

INSERT INTO COURSE
VALUES(05,1100335,'Introduction to DevOps','2021-08-12');


--Select Tables
--The SELECT statement is used to select data from a database.
--The data returned is stored in a result table, called the result-set.
--To select all the fields available in the table use Syntax => SELECT * FROM table_name;
SELECT * FROM EMPLOYEE;
SELECT * FROM COURSE;

/*To select specific fields available in the table use Syntax => 
SELECT column1, column2, ...
FROM table_name;*/
SELECT EMPLOYEE_ID, EMPLOYEE_NAME FROM EMPLOYEE;
SELECT COURSE_ID,COURSE_NAME FROM COURSE;

--Drop Tables
/*The DROP TABLE statement is used to drop an existing table in a database.
Syntax => DROP TABLE table_name;*/
DROP TABLE EMPLOYEE;
DROP TABLE COURSE;