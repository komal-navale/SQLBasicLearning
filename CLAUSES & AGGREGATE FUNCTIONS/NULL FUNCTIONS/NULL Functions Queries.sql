--ISNULL() Function
/*ISNULL(): The ISNULL function have different uses in SQL Server and MySQL. In SQL Server, ISNULL() function is used to replace NULL values.
Syntax:
SELECT column(s), ISNULL(column_name, value_to_replace)
FROM table_name;*/
SELECT DISTINCT(COURSE_NAME), COURSE_PRICE, ISNULL(COURSE_PRICE,499) AS MODIFIED_COURSE_PRICE FROM COURSE;


--IFNULL() Function
/*This function is available in MySQL, and not in SQL Server or Oracle. This function take two arguments. If the first argument is not NULL, the function returns the first argument. Otherwise, the second argument is returned. This function is commonly used to replace NULL value with another value.
Syntax:
SELECT column(s), IFNULL(column_name, value_to_replace)
FROM table_name;*/

--COALESCE() Function
/*COALESCE function in SQL returns the first non-NULL expression among its arguments. If all the expressions evaluate to null, then the COALESCE function will return null.
Syntax:
SELECT column(s), CAOLESCE(expression_1,....,expression_n)
FROM table_name;*/

SELECT COURSE_NAME, COURSE_PRICE, COALESCE(COURSE_PRICE,ISNULL(COURSE_PRICE,499)) AS MODIFIED_COURSE_PRICE FROM COURSE;

--NULLIF() Function
/*The NULLIF function takes two argument. If the two arguments are equal, then NULL is returned. Otherwise the first argument is returned.
Syntax:
SELECT column(s), NULLIF(expression1, expression2)
FROM table_name;*/

SELECT DISTINCT(COURSE_NAME), COURSE_PRICE, NULLIF(COURSE_PRICE, COURSE_PRICE) AS 'NULLIF(COURSE_PRICE, COURSE_PRICE)' FROM COURSE; 