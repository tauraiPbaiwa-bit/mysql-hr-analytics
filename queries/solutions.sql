-- ========================================================
-- MySQL HR Schema Queries Solutions
-- ========================================================
-- Use this script to execute your solutions against the HR database.

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

# 5. Null Value Detection Write a query to display the last name and job ID of all employees who do not have a manager assigned (manager_id is NULL).
desc employees;
select last_name
from employees
where manager_id is null;

# 6. String Manipulation (Concatenation) Write a query to display a single column named Contact_Details that shows the employees email followed by their phone number (e.g., "SKING - 515.123.4567").

select concat(email," - ", phone_number) as full_name
from employees;

# 7. Aggregating Salary by Job Write a query to find the highest and lowest salary offered for each job_id.

select max(salary), min(salary), job_id
from employees
group by job_id;
 
# 8. Join with Regions Write a query to show the country name and the region name they belong to.

select *from regions;
select * from countries;

select country_name, region_name
from countries
inner join regions
on countries.region_id = regions.region_id;

# 9. Subquery Practice Write a query to display all employees who earn more than the average salary of the entire company

select first_name, last_name, salary
from employees
where salary > (
	select avg(salary) from employees);
    
# 10. Calculating Tenure Write a query to display the employees last name and the number of days they have been with the company since they were hired.

select last_name, datediff(now(), hire_date) as Number_of_WorkDays , hire_date from employees;
 
 
