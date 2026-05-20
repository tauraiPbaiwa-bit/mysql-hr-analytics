-- ========================================================
-- FILE: queries/practice_queries.sql
-- PROJECT: MySQL HR Schema Analytics Project
-- PURPOSE: Advanced JOIN Practice Questions
-- ========================================================

USE HR;

-- 1. Employee, Job Title, and Department Name
-- Write a query to display the first name, last name, job title, and department name for all employees.
-- Target Tables: EMPLOYEES, JOBS, DEPARTMENTS



-- 3. Departments Without Any Employees (Outer Join)
-- Write a query to display a list of all department names even if there are currently no employees assigned to them.
-- Target Tables: DEPARTMENTS, EMPLOYEES



-- 4. Full Geographic Path for Departments (Multi-Table Join)
-- Write a query to display the department name, city, country name, and region name for every department.
-- Target Tables: DEPARTMENTS, LOCATIONS, COUNTRIES, REGIONS



-- 5. Employees Earning More Than Their Managers
-- Write a query to find the first name, last name, and salary of all employees who earn a higher salary than their direct manager.
-- Target Tables: EMPLOYEES (Self-Join)



-- 6. Count of Employees in Each City
-- Write a query to display the city name and the total number of employees working in that city.
-- Target Tables: EMPLOYEES, DEPARTMENTS, LOCATIONS



-- 7. Average Salary per Region
-- Write a query to find the region name and the average salary of employees working within that region.
-- Target Tables: EMPLOYEES, DEPARTMENTS, LOCATIONS, COUNTRIES, REGIONS



-- 9. Departments with High Average Salaries (Aggregation & Filtering)
-- Write a query to display the department name and its average salary, but only for departments where the average salary is greater than 8,000.
-- Target Tables: DEPARTMENTS, EMPLOYEES
