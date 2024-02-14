-- task5 Write a query to make a join with two tables employees and departments to display department name, 
-- first_name and last_name, hire date and salary 
-- for all the managers who achieved a working experience is more than 15 years.


select * from (	
select d.department_name,e.first_name,e.last_name,e.hire_date,e.salary,EXTRACT(YEAR from AGE(CURRENT_DATE,e.hire_date)) as Experience
from emp e
inner join 
departments d on e.employee_id=d.manager_id) as R
where R.Experience >15

-- or

select d.department_name,e.first_name,e.last_name,e.hire_date,e.salary
from emp e
inner join 
departments d on e.employee_id=d.manager_id
where extract(year from age(current_date,e.hire_date))>15;

-- subqueries
-- task1 Write a SQL subquery to find the first_name and last_name of all employees who works in the IT department.


select * from emp;
select * from departments;

select e.first_name,e.last_name from emp e
inner join departments d 
on e.department_id=d.department_id
where d.department_name='IT';

select e.first_name,e.last_name from emp e
where department_id=(select department_id from departments where department_name='IT' );

-- task2 Write a SQL subquery to find the first_name and last_name of the employees who are working as a manager.

select first_name,last_name from emp
where department_id=(select department_id from departments where department_name='Sales');


-- task3 Write a SQL subquery to find the first_name, last_name and salary, which is greater than the average salary of the employees.
select first_name,last_name,salary from emp
where salary>(select avg(salary) from emp);


show databases;
SELECT datname FROM pg_database;

select * from departments;

create table monkey as
select * from departments;

select * from monkey;

alter table monkey
add column age int;

update monkey
set age =22
where department_id=10;

begin;

delete from monkey
where department_id=1;

rollback;

begin;
delete from monkey
where department_id=1;

select * from monkey;

rollback;

create table boy
as select * from departments
where False;

f


