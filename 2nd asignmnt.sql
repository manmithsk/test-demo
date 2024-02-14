- joins 

-- task1 Write a SQL query to make a join with three tables employees, departments and 
-- locations to find the name, including first_name and last_name,
-- jobs, department name and ID, of the employees working in London.


select * from emp;
select * from departments;
select * from locations;

select concat(first_name,' ',last_name) as name,e.job_id as job,d.department_name,d.department_id
from emp e
inner join 
departments d on e.department_id=d.department_id
inner join 
locations l on d.location_id=l.location_id
where l.city='london';


-- TASK2 Write a query to make a join with two tables employees and departments to get the department name and 
-- number of employees working in each department.

select d.department_name, count(e.employee_id) as number_emp 
from emp e
join 
departments d on e.department_id=d.department_id
group by d.department_name;

-- task3 Write a query to make a join with two tables employees and departments to display the department ID, 
-- department name and the first name of the manager.

select d.department_id,d.department_name,e.manager_id, e.first_name
from emp e
inner join
departments d on e.employee_id=d.manager_id;


-- task4 Write a query to make a join with three tables departments, employees, and 
-- locations to display the department name, manager name, and city.

select d.department_name,concat(e.first_name,' ',e.last_name),l.city
from emp e
inner join 
departments d on e.employee_id=d.manager_id
inner join 
locations l on d.location_id=l.location_id ;

-- task5 Write a query to make a join with two tables employees and departments to display department name,
-- first_name and last_name, hire date and salary 
-- for all the managers who achieved a working experience is more than .

select d.department_name,e.first_name,e.last_name,e.hire_date,e.salary
from emp e
inner join 
departments d on e.employee_id=d.manager_id
where  EXTRACT(YEAR FROM AGE(e.hire_date,current_date)) > .5 AND d.manager_id IS NOT NULL;


SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS current_year;

SELECT AGE('2000-03-019'::date, CURRENT_DATE) AS age;
select * from emp;

insert into emp values ('ram', 'chandra', 'ram.chndra@example.com', '525-8765', '2000-01-05', 'Manager', 75000.0, 0.03, NULL, 3);

