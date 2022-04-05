USE test_create_table;
-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
SELECT
  location_id,
  street_address,
  city,
  state_province,
  country_name
FROM
  locations NATURAL
  JOIN countries;
--   2. Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT
  first_name,
  last_name,
  department_id,
  department_name
FROM
  employees
  JOIN departments USING(department_id);
--   3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
SELECT
  *
FROM
  employees e
  JOIN departments d ON e.department_id = d.department_id
  JOIN locations l ON d.location_id = l.location_id
WHERE
  l.city = 'London';
-- 4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
SELECT
  e.employee_id,
  e.first_name,
  e.last_name,
  m.employee_id,
  m.first_name,
  m.last_name
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id;
--   5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
SELECT
  e.first_name,
  e.last_name,
  e.hire_date
FROM
  employees e
  JOIN employees emp ON emp.last_name = 'Jones'
WHERE
  e.hire_date > emp.hire_date;
--   6. Write a query to get the department name and number of employees in the department.
SELECT
  d.department_name,
  COUNT(*) AS 'No Of Employees'
FROM
  employees e
  JOIN department d ON e.department_id = d.department_id
GROUP BY
  department_id,
  department_name;
--   7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
SELECT
  employee_id,
  job_title,
  start_date - end_date AS 'Days'
FROM
  job_history
  JOIN jobs ON job_history.job_id = jobs.job_id
WHERE
  department_id = 90;
--   8. Write a query to display the department ID and name and first name of manager.
SELECT
  d.department_id,
  d.department_name,
  d.manager_id,
  e.first_name
FROM
  departments d
  JOIN employees e ON d.manager_id = e.manager_id;
--   9. Write a query to display the department name, manager name, and city.
SELECT
  d.department_name,
  e.manager_name,
  l.city
FROM
  departments d
  JOIN employees e ON d.manager_id = e.manager_id
  JOIN locations l ON d.location_id = l.location_id;
--   10. Write a query to display the job title and average salary of employees.
SELECT
  job_title,
  AVG(salary)
FROM
  employees NATURAL
  JOIN jobs
GROUP BY
  job_title;
--   11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
SELECT
  job_title,
  employee_name,
  salary - min_salary AS 'Salary - Min_Salary'
FROM
  employees
  JOIN jobs ON employees.job_id = jobs.job_id;
--   12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
SELECT
  jh.*
FROM
  job_history jh
  JOIN employees e ON jh.employee_id = e.employee_id
WHERE
  salary > 10000;
--   13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.
SELECT
  d.department_name,
  e.first_name,
  e.last_name,
  e.hire_date,
  e.salary,
  DATEDIFF(NOW(), e.hire_date) / 365 AS 'Experience'
FROM
  departments d
  JOIN employees e ON d.manager_id = e.manager_id
WHERE
  DATEDIFF(NOW(), hire_date) / 365 > 15;