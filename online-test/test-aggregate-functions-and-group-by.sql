USE test_create_table;
-- 1. Write a query to list the number of jobs available in the employees table.
SELECT
  COUNT(DISTINCT job_id)
FROM
  employees;
--   2. Write a query to get the total salaries payable to employees.
SELECT
  SUM(salary)
FROM
  employees;
--  3. Write a query to get the minimum salary from employees table.
SELECT
  MIN(salary)
FROM
  employees;
--   4. Write a query to get the maximum salary of an employee working as a Programmer.
SELECT
  MIN(salary)
FROM
  employees
WHERE
  job_id = 'IT_PROG';
--   5. Write a query to get the average salary and number of employees working the department 90.
SELECT
  AVG(salary),
  count(*)
FROM
  employees
WHERE
  department_id = 90;
--   6. Write a query to get the highest, lowest, sum, and average salary of all employees.
SELECT
  MAX(salary) As 'Maximum',
  MIN(salary) AS 'Minimum',
  SUM(salary) AS 'Sum',
  AVG(salary) AS 'Average',
FROM
  employees;
--   7. Write a query to get the number of employees with the same job.
SELECT
  job_id,
  COUNT(*)
FROM
  employees
GROUP BY
  job_id;
--   8. Write a query to get the difference between the highest and lowest salaries.
SELECT
  MAX(saalry) - MIN(saalry) AS 'Difference',
FROM
  employees;
--   9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT
  manager_id,
  MIN(salary)
FROM
  employees
WHERE
  manager_id IS NOT NULL
GROUP BY
  manager_id
ORDER BY
  MIN(saalry) DESC;
--   10. Write a query to get the department ID and the total salary payable in each department.
SELECT
  department_id,
  SUM(salary) AS 'Total Salary',
FROM
  employees
GROUP BY
  department_id;
--   11. Write a query to get the average salary for each job ID excluding programmer.
SELECT
  job_id,
  AVG(salary) AS 'Average Salary',
FROM
  employees
WHERE
  job_id <> 'IT_PROG'
GROUP BY
  job_id;
--   12. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
SELECT
  job_id,
  SUM(salary),
  MAX(salary),
  MIN(salary),
  AVG(salary)
FROM
  employees
WHERE
  department_id = 90
GROUP BY
  job_id;
--   13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT
  job_id,
  MAX(salary),
FROM
  employees
GROUP BY
  job_id
HAVING
  MAX(salary) >= 4000;
--   14. Write a query to get the average salary for all departments employing more than 10 employees.
SELECT,
  department_id,
  AVG(salary),
  COUNT(*)
FROM
  employees
GROUP BY
  department_id
HAVING
  COUNT(*) > 10;