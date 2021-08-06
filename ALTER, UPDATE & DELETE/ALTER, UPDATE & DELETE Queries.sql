--Alter Table
/*The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
ALTER TABLE - ADD Column
To add a column in a table, use the following syntax:
ALTER TABLE table_name
ADD column_name datatype;*/
ALTER TABLE COURSE
ADD COURSE_PRICE NUMERIC(5);


/*ALTER TABLE - DROP COLUMN
To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):
ALTER TABLE table_name
DROP COLUMN column_name;*/

/*ALTER TABLE - ALTER/MODIFY COLUMN
To change the data type of a column in a table, use the following syntax:
ALTER TABLE table_name
ALTER COLUMN column_name datatype;*/
ALTER TABLE EMPLOYEE
ALTER COLUMN EMPLOYEE_NAME NVARCHAR(50);


--Update Table
/*The UPDATE statement is used to modify the existing records in a table.
UPDATE Syntax =>
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;*/
UPDATE COURSE
SET COURSE_PRICE = 1000
WHERE COURSE_ID = 1;

UPDATE COURSE
SET COURSE_PRICE = 1600
WHERE COURSE_ID = 2;

UPDATE COURSE
SET COURSE_PRICE = 2000
WHERE COURSE_ID = 3;

UPDATE COURSE
SET COURSE_PRICE = 499
WHERE COURSE_ID = 4;

UPDATE COURSE
SET COURSE_PRICE = 2100
WHERE COURSE_ID = 5;

UPDATE COURSE
SET COURSE_PRICE = 1800
WHERE COURSE_ID = 6;

--Delete Record from Table and Delete Table
/*The DELETE statement is used to delete existing records in a table.
DELETE Syntax =>
DELETE FROM table_name WHERE condition;
The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted! */
DELETE FROM COURSE WHERE COURSE_ID=1 AND EMPLOYEE_ID=142065;

/*Delete All Records
It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact:
DELETE FROM table_name; */
DELETE FROM DEPARTMENT;

SELECT * FROM EMPLOYEE;
SELECT * FROM COURSE;
SELECT * FROM DEPARTMENT;
