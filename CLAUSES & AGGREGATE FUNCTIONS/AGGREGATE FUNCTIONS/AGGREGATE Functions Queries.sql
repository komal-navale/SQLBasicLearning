/*Aggregate functions are the built-in methods that help us to convert multiple values available in the column to a single entity.

These are required to combine and draw insights from the data spread in columns of the database. Aggregate functions can also be applied to the expressions.

Some of the most popular SQL aggregate functions are as follows:

Sr.No	Function	Description
1		AVG()		Returns the average value.
2		COUNT()		Returns the count.
3		MAX()		Returns the max out of given values.
4		MIN()		Returns minimum out of the given values.
5		SUM()		Returns the sum of the given values.
6		VAR()		Returns variance of the given values.*/

--AVG() Function
SELECT AVG(COURSE_PRICE) AS AVG_COURSE_PRICE FROM COURSE;

--COUNT() Function
SELECT COUNT(EMPLOYEE_ID) AS TOTAL_EMPLOYEES FROM EMPLOYEE;

--MAX() Function
SELECT MAX(COURSE_PRICE) AS MAX_COURSE_PRICE FROM COURSE;

--MIN() Function
SELECT MIN(COURSE_PRICE) AS MIN_COURSE_PRICE FROM COURSE;

--SUM() Function
SELECT COUNT(DISTINCT(COURSE_ID)) AS TOTAL_COURSES, SUM(DISTINCT(COURSE_PRICE)) AS SUM_COURSE_PRICE FROM COURSE;

--VAR() Function
SELECT VAR(COURSE_PRICE) AS VARIANCE_COURSE_PRICE FROM COURSE;



