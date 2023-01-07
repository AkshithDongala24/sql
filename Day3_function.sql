SQL
  DML
  DDL
  DCL
  TCL



PL/SQL
  
  
SQL: 


Oracle
   SQL
   MYSQL
   
DB2
  
SQL server

..
..


DBMS

Lib:

EF CODD: 
  12th rule
    RDBMS -> Tabular format
	           row/tuple/record
			   columns/attribute
			   
    ORDBMS
	  Oracle SQL
	  
SQL
  DML
	   Select
	   Insert
	   Update
	   Delete
   
  DDL
	  Create
	  Alter
	  Rename
	  Truncate
	  Drop
  
  
  DCL
	Grant
	Revoke
  
  
  TCL
    Commit
	Rollback
	Savepoint

  
  
install:
  window:
    Install Oracle express edition:

https://www.oracle.com/in/database/technologies/xe-downloads.html 21c
https://www.oicbasics.com/2020/01/download-oracle-database-11g-xe-express.html 11g


https://livesql.oracle.com/apex/livesql/file/content_GV8MU6SITA2V3VYI179FAJUCY.html


  Function
  1.Single row function
  2.Multiple row function /group function /aggregate function
  
  
  Single row function
  a. char function
  b. number function
  c. date function
  d. conversion function
  e. general function
  
  
  
a. char function  
-----------------
  1. Upper(str)
  2. lower(str)
  3. Inintcap(str)
  SELECT UPPER('abc Def GHI'), LOWER('abc Def GHI'), INITCAP('abc Def GHI') FROM dual; 
  
  
  4. length(str)
  SELECT LENGTH('abcd') FROM dual; --4
  
  5. substr(str, position, [length])
  6. instr(str, substr, [position],[occurence])
  7. lpad(str, length, paddding_char)
  8. rpad(str, length, paddding_char)
  9. trim(str), ltrim(str), rtrim(str)  => remove spaces from the boundary
  10. concat(str1, str2)
  
 
 
 --function

SELECT employee_id,last_name,salary
FROM employees;

SELECT UPPER('abc Def GHI'), LOWER('abc Def GHI'), INITCAP('abc Def GHI') FROM dual;

--emp which contain letter a
SELECT last_name
FROM employees
WHERE UPPER(last_name) LIKE '%A%'
ORDER BY 1;

SELECT LENGTH('abcd') FROM dual;

--substr(str, position)
  SELECT SUBSTR('abcde ghi',2) FROM dual; --bcde ghi
  SELECT SUBSTR('abcde ghi',7) FROM dual; --ghi
  SELECT SUBSTR('abcde ghi',-5) FROM dual;-- e ghi
  
--substr(str, position, length)
  SELECT SUBSTR('abcde ghi',2,4) FROM dual; --bcde
  SELECT SUBSTR('abcde ghi',-2,2) FROM dual; --hi
  
 
--instr(str, substr)
  SELECT INSTR('hello world','l',1,4) FROM dual;
  
  SELECT INSTR('abcdeabaaabbccaa','c') FROM dual; --3
  
--instr(str, substr,position)  
  SELECT INSTR('abcdeabaaabbccaa','c',5) FROM dual; --13
  
--instr(str, substr,position, occurence)  
  SELECT INSTR('abcdeabaaabbccaa','c',2,2) FROM dual; --13
  

--lpad(str, length, paddding_char)

  SELECT LPAD('abcde',8,'X'), rPAD('abcde',8,'*') FROM dual;
  

--trim(str)
  SELECT TRIM(' abc def '),LENGTH(TRIM(' abc def ')) FROM dual;
  SELECT lTRIM(' abc def '),LENGTH(lTRIM(' abc def ')) FROM dual;
  SELECT TRIM('a' FROM 'aabcdaaadefaaa') FROM dual;
  
--concat(str1, str2)
 SELECT CONCAT('abc','def') FROM dual; --abcdef
 

--psuedo column(rownum)

SELECT ROWNUM,employee_id,last_name,salary 
FROM employees
WHERE ROWNUM<=6;



