Select
-----------------
select * from user_tables;

desc employees;

select * from employees;

desc departments;


Rule:
1. SQL is not case sensitive.
2. -- single line comment
3. \* multiple line comment  *\
4. literal should be in single quote ''
5.


select * from user_tables;


syntax:

select [distinct]|[*]|[col1, col2, col3,.....]
from table_name|view_name;

Rule:


select * from employees;

select employee_id,first_name,last_name,SALARY
FROM employees;

--waq to select id,name(full name),salary
select employee_id, first_name||last_name, salary
from employees;

--modifying the above query
select employee_id as id, first_name||' '||last_name as name, salary
from employees;

--as keyword is optional
select employee_id  id, first_name||' '||last_name  name, salary
from employees;

select employee_id,first_name  last_name
from employees;

--write a query to display in below format
/*
The salary of King is 24000.
The salary of Kochhar is 17000
.
.
107 rows
*/
select last_name,salary from employees;
Select 'The salary of '||last_name||' is '||salary||'.' as details
from employees;

Select 'The salary of'||' '||last_name||' is '||salary||'.' as details
from employees;

--write a query to display in below format
/*
King's salary is 24000.
Kochhar's salary is 17000
.
.
107 rows
*/

--10g or before
select last_name||'''s salary is '||salary||'.' as details
from employees;

--after 10g
select last_name||q'['s salary is ]'||salary||'.' as details
from employees;

--list of managers
select distinct manager_id from employees;

select distinct  manager_id,department_id from employees;
