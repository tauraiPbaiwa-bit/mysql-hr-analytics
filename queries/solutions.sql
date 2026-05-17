
# 1. Display Department Locations Write a query to display the department name, city, and state for all departments
show tables;
select*from departments;
select*from locations;

select department_name , city 
from departments 
inner join  locations 
on departments.location_id = locations.location_id;

# 2. Filter by Specific Jobs Write a query to display the full name (first and last) and hire date for all employees who are either 'Programmers' or 'Accountants'
select* from jobs;
select *from employees;
desc employees;

select first_name, last_name, hire_date
from employees
where job_id in("it_prog","fi_account");

# 3. Identify High Earners by Department Write a query to show all employees in Department 90 (Executive) who earn more than 15,000.
 select*from departments;
 desc departments;
 
 select first_name, last_name, department_name
 from employees
 inner join departments
 on employees.department_id = departments.department_id
 where salary > 15000;
 
 # 4. Date-Based Filtering Write a query to display all employees who were hired after January 1st, 2005.
 select*from employees;
 
 select first_name, last_name, hire_date
 from employees
 where hire_date > '2005-01-01';
 
 
