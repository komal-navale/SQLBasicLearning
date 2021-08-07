--WHERE Clause
/*We use the WHERE clause to specify conditionals in our SQL query. 
Where clause can be used in the update and delete statements as well as to perform operations on the desired data.
Rules and Usage:
1. Rules:
When using a Where clause, we need to mention at least one condition

2. Usage:
Used to query and transact the database.
Used with an update and delete statements to make sure the right data points are deleted.

Syntax: 
SELECT * FROM tableName WHERE condition ;*/

SELECT * FROM COURSE WHERE COURSE_ID = 2;

--AND Clause
/*We use And clause while specifying multiple conditions together in a query with the Where clause.
Rules and Usage:
1. Rules:
When using an And clause, we need to mention at least two conditions(the result would satisfy both.)

2. Usage:
Used to query and transact the database.
Used with an update and delete statements to make sure the right data points are deleted.
Returns a data point only if all conditions meet the requirements.

Syntax: 
SELECT * FROM tableName WHERE condition1 AND condition2 ;*/

SELECT * FROM COURSE WHERE COURSE_ID = 2 AND EMPLOYEE_ID=1186554;

--OR Clause
/*Or clause is beneficial when we need to pass multiple conditions, and we need data that satisfies any one of those specified conditions.
Rules and Usage:
1. Rules:
When using an Or clause, we need to mention at least two conditions(the result would be at least one of the specified conditions.)

2. Usage:
Used while transacting and querying a database.
Used in the update and delete statements.
Or clause returns a data point when any one of the specified conditions is met.

Syntax:
SELECT * FROM tableName  WHERE condition1 OR condition2 ;*/

SELECT * FROM COURSE WHERE COURSE_STARTDATE='2021-08-10' OR COURSE_ID = 3;

--LIKE Clause
/*LIKE clause is beneficial to find specific patterns in the data. We use specific symbols i.e (%) and ( _ ). The rules and usage is specified below.
Rules and Usage:
1. Rules:
The percent sign(%) – Represents zero, one, or multiple characters.
The underscore sign(_) – Represents one single character.

2. Usage:
Used to retrieve data points that satisfy the pattern passed using the like clause.

Syntax :
SELECT * FROM tableName WHERE column2 LIKE pattern ;*/

SELECT * FROM EMPLOYEE WHERE EMPLOYEE_DEPARTMENT LIKE '%PP%';

SELECT * FROM EMPLOYEE WHERE EMPLOYEE_ADDRESS LIKE 'P____';


--Wildcard Characters
/*A wildcard character is used to substitute one or more characters in a string.
Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
Symbol	Description												Example
%		Represents zero or more characters						bl% finds bl, black, blue, and blob
_		Represents a single character							h_t finds hot, hat, and hit
[]		Represents any single character within the brackets		h[oa]t finds hot and hat, but not hit
^		Represents any character not in the brackets			h[^oa]t finds hit, but not hot and hat
-		Represents a range of characters						c[a-b]t finds cat and cbt*/

SELECT EMPLOYEE_NAME FROM EMPLOYEE WHERE EMPLOYEE_NAME LIKE '%a_%';


--LIMIT Clause
/*We use the limit clause when we have a large amount of data in the table. With the help of the limit clause, we can restrict the number of rows our query returns.
Rules and Usage:
1. Rules:
We need to specify a number after the limit clause.
Float and exponential values can’t be utilized.

2. Usage:
Used to limit the data that a query would return.

Syntax:
SELECT * FROM tableName LIMIT number ;

SELECT * FROM COURSE LIMIT 5*/

--SELECT TOP Clause
/*The SELECT TOP clause is used to specify the number of records to return.
The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, 
while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

SQL Server / MS Access Syntax:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;*/

SELECT TOP 5 COURSE_ID,EMPLOYEE_ID, COURSE_NAME, COURSE_STARTDATE, COURSE_PRICE FROM COURSE;

--ORDER BY Clause
/*We use order by clause to sort data in ascending or descending order as required by the user. By default, the data is sorted in ascending order.
To sort the records in descending order, use the DESC keyword.
Rules and Usage:
1. Rules:
A comparable data column should be passed in the query.
Any column can be used in the order by clause, even those which do not appear in our select statement.
We can sort data in ascending or descending order (by default sorting is done in ascending order).

2. Usage:
Order by clause is useful to get data in required sorting orders.

Syntax:
SELECT * FROM tableName ORDER BY column1, column2, ... ASC/DESC;*/

SELECT * FROM EMPLOYEE ORDER BY EMPLOYEE_ID ASC;

SELECT * FROM COURSE ORDER BY COURSE_PRICE DESC;


--GROUP BY Clause
/*We use order by clause to get the summary of data in rows and is mostly taken in usage with the aggregate functions like Count, Sum, etc.
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
Rules and Usage:
1. Rules:
Columns appearing in the Select clause can only be taken care of in the Group By clause.
Columns we are passing to the Group By clause should be of comparable type.

2. Usage:
We use Group by clause to get the groups present in data.

Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s); ;*/

SELECT COURSE_ID, COURSE_NAME FROM COURSE GROUP BY COURSE_ID, COURSE_NAME;

--HAVING Clause
/*The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);*/

SELECT COURSE_ID, MAX(COURSE_PRICE) AS MAX_COURSE_PRICE FROM COURSE GROUP BY COURSE_ID HAVING MAX(COURSE_PRICE)<1800;

--SQL Aliases
/*SQL aliases are used to give a table, or a column in a table, a temporary name.
Aliases are often used to make column names more readable.
An alias only exists for the duration of that query.
An alias is created with the AS keyword.
Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;

Alias Table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;*/

SELECT EMPLOYEE_NAME AS EMP_NAME, EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID=1186554;

SELECT EMPLOYEE_NAME, EMPLOYEE_ID FROM EMPLOYEE AS emp WHERE emp.EMPLOYEE_ID=142065;