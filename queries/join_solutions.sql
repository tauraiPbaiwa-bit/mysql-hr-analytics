-- ========================================================
-- MySQL HR Schema Queries Solutions
-- ========================================================
-- Use this script to execute your solutions against the HR database.


# 1. Write a query to display the first name, last name, job title, and department name for all employees.
show tables;
select * from jobs;
select *from employees;
select *from departments;

select e.first_name, e.last_name, j.job_title, d.department_name
from hr.employees e
inner join hr.jobs j on e.job_id = j.job_id
inner join hr.departments d on e.department_id = d.department_id;


# 3. Write a query to display a list of all department names even if there are currently no employees assigned to them.

select department_name
from departments
right join employees
on employees.department_id = departments.department_id;

# 4. Write a query to display the department name, city, country name, and region name for every department.
select *from locations;
select *from countries;

select d.department_name, l.city, c.country_name, r.region_name
from hr.departments d
inner join  hr.locations l on d.location_id = l.location_id
inner join hr.countries c on l.country_id = c.country_id
inner join hr.regions r on c.region_id = r.region_id;

# 5. Write a query to find the first name, last name, and salary of all employees who earn a higher salary than their direct manager.
select *from employees;

select e.first_name, e.last_name, e.salary as Employee_salary, m.salary as Manager_salary
from hr.employees e

# 6. Write a query to display the city name and the total number of employees working in that city.

select *from locations;
select*from employees;
select *from departments;

select count(e.employee_id) as Total_Employees , l.city
from hr.employees e
inner join hr.departments d on e.department_id = d.department_id
inner join hr.locations l on d.location_id = l.location_id
group by l.city;

# 7. Assuming data exists in a history table, write a query to display the employee ID, their old job title (from history), and their current job title (from the core employees table).

show tables;
select *from job_history;
select *from jobs;

select e.employee_id, j2.job_title
from hr.employees e
inner join hr.job_history j1 on e.job_id = j1.job_id
inner join hr.jobs j2 on j1.job_id = j2.job_id;
inner join hr.employees m on e.employee_id = m.manager_id
where e.salary > m.salary; 
