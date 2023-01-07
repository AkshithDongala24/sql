--plsql developer
--sql developer

SELECT * FROM employees;

SELECT employee_id, last_name,salary
FROM employees;


--filter the row or restrict the row, use where clause
SELECT [DISTINCT] *|col1,col2,...
FROM table_name
WHERE <condition>;

conditional OPERATOR 
>
>=
<
<=
=
!=   <>    ^=  

IN
BETWEEN AND
IS   --use with null
IS NOT  --use with null
LIKE

LOGICAL OPERATOR
AND
OR
NOT
;
--where clause

--list of emp whose salary is greater than 10000
SELECT employee_id,last_name,salary 
FROM employees
WHERE salary >10000;


--list of emp who is working in dept 20
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id = 20;

--list of emp who is working in dept 20,30
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id = 20
OR department_id =30;


--list of emp who is not working in dept 50
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id <> 50;

SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id != 50;

SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id ^= 50;



--list of emp who is not working in dept 50,80
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id != 50
AND department_id != 80;


--list of emp who is working in dept 20,30,70,90
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id IN(20,30,70,90);

--list of emp who is not working in dept 50,80,90,30
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id NOT IN (50,80,90,30);



--list of emp whose salary is >= 10000  and <=15000
SELECT employee_id,last_name,salary 
FROM employees
WHERE salary >=10000
AND salary<=15000;

SELECT employee_id,last_name,salary 
FROM employees
WHERE salary BETWEEN 10000 AND 15000;

--list of emp whose salary is<2500 and >15000
--eg: 2200,2100,16000,17000
SELECT employee_id,last_name,salary 
FROM employees
WHERE salary <2500
OR salary>15000;

SELECT employee_id,last_name,salary 
FROM employees
WHERE salary NOT BETWEEN 2500 AND 15000;


--detail of employee with name King
SELECT * FROM employees
WHERE last_NAME='King';  --literal/string should be in single quote

--Note: string are case sensitive

--dummy table  => dual
SELECT 10+2
FROM dual;

--date format => dd-Mon-RR
SELECT SYSDATE FROM dual;
             RR     YY
12-jan-96 => 1996 /2096
12-jan-47 => 2047/2047

SELECT last_name,salary, hire_date
FROM employees
WHERE hire_date ='17-Jun-03';

SELECT last_name,salary, hire_date
FROM employees
WHERE hire_date ='17-JUN-03';
--date is format sensitive


--null=> unavailable or unassigned value
--name of emp who is not working in any dept
SELECT employee_id,last_name,salary, department_id 
FROM employees
WHERE department_id IS NULL;


--list of emp who have commission
SELECT last_name,salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;


--name of employee who is CEO of the company
SELECT last_name,salary, manager_id
FROM employees
WHERE manager_id IS NULL;



--like operator
% 0 OR many
_ EXACT ONE


--list of employee whose name start with letter A
SELECT last_name
FROM employees
WHERE last_name LIKE 'A%';

--list of employee whose name end with letter a
SELECT last_name
FROM employees
WHERE last_name LIKE '%a';

--list of emp who name contain letter y
SELECT last_name
FROM employees
WHERE last_name LIKE '%y%'

--list of emp who name start with A or B or C or D
SELECT last_name
FROM employees
WHERE last_name LIKE 'A%' 
OR last_name LIKE 'B%'
OR last_name LIKE 'C%'
OR last_name LIKE 'D%'

--list of emp who 2nd letter is a
SELECT last_name
FROM employees
WHERE last_name LIKE '_a%'

--list of emp whose 2nd last letter is o
SELECT last_name
FROM employees
WHERE last_name LIKE '%o_';

--emp who name contain 3 character
SELECT last_name
FROM employees
WHERE last_name LIKE '___';


--emp whose name contain letter a and e
eg: Baer, Baale,

SELECT last_name
FROM employees
WHERE last_name LIKE '%a%e%'
OR last_name LIKE '%e%a%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%';


-- execution    from  => where  => select

--name,salary, ann_salary for emp who ann_salary>100000

SELECT last_name,salary, salary*12 AS ann_sal
FROM employees
WHERE ann_sal >100000;  --error

SELECT last_name,salary, salary*12 AS ann_sal
FROM employees
WHERE salary*12 >100000;



--sort the column => order by clause


SELECT last_name,salary,department_id
FROM employees
ORDER BY salary;  --default sorting -> ascending


SELECT last_name,salary,department_id
FROM employees
ORDER BY salary DESC;


-- execution  from  => where  => select  => order by

SELECT last_name,salary,department_id
FROM employees
ORDER BY salary DESC , department_id DESC;


--name,salary, ann_salary for emp who ann_salary>100000 and sort it by ann_salary
SELECT last_name,salary, salary*12 AS ann_sal
FROM employees
WHERE salary*12 >100000
ORDER BY ann_sal;


-- sort the data by salay
SELECT last_name,salary,department_id
FROM employees
ORDER BY 1; 



--waq to find emp whose salary >=6000 and salary<=9000 and woring in dept 80,90
SELECT last_name,salary,department_id
FROM employees
WHERE salary>=6000 AND salary<=9000
AND (department_id=80
OR department_id=90)
ORDER BY salary; --22 rows

SELECT last_name,salary,department_id
FROM employees
WHERE salary BETWEEN 6000 AND 9000
AND department_id IN (80,90)
ORDER BY salary;  --19 rows


--waq to find emp whose salary<3000 and salary>9000 and working in dept 50,80
--check the no of rows and result

SELECT last_name,salary,department_id
FROM employees
WHERE (salary<6000 OR salary >9000)
AND (department_id=50
OR department_id=80)
ORDER BY salary;  

SELECT last_name,salary,department_id
FROM employees
WHERE salary NOT BETWEEN 6000 AND 9000
AND department_id IN (50,80)
ORDER BY salary;  --56 rows


