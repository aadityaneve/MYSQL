USE test_create_table;
-- 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.
-- Here in the following is the structure of the table countries.
-- +--------------+---------------+------+-----+---------+-------+
-- | Field        | Type          | Null | Key | Default | Extra |
-- +--------------+---------------+------+-----+---------+-------+
-- | COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
-- | COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
-- | REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
-- +--------------+---------------+------+-----+---------+-------
INSERT INTO
  countries
VALUES('C1', 'India', 1001);
-- 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.
  -- Here in the following is the structure of the table countries.
  -- +--------------+---------------+------+-----+---------+-------+
  -- | Field        | Type          | Null | Key | Default | Extra |
  -- +--------------+---------------+------+-----+---------+-------+
  -- | COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
  -- | COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
  -- | REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
  -- +--------------+---------------+------+-----+---------+-------+
INSERT INTO
  countries (country_id, country_name)
VALUES('C1', 'India');
-- 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.
  -- Here in the following is the structure of the table countries.
  -- +--------------+---------------+------+-----+---------+-------+
  -- | Field        | Type          | Null | Key | Default | Extra |
  -- +--------------+---------------+------+-----+---------+-------+
  -- | COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
  -- | COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
  -- | REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
  -- +--------------+---------------+------+-----+---------+-------+
  CREATE TABLE IF NOT EXISTS country_new AS
SELECT
  *
FROM
  countries;
--   4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.
INSERT INTO
  countries(country_id, country_name, region_id)
VALUES('C1', 'India', NULL);
-- 5. Write a SQL statement to insert 3 rows by a single insert statement.
INSERT INTO
  countries
VALUES('C0001', 'India', 1001),
  ('C0002', 'Rusia', 1007),
  ('C0003', 'USA', 1003);
-- 6. Write a SQL statement insert rows from country_new table to countries table.
  -- Here is the rows for country_new table. Assume that, the countries table is empty.
  -- +------------+--------------+-----------+
  -- | COUNTRY_ID | COUNTRY_NAME | REGION_ID |
  -- +------------+--------------+-----------+
  -- | C0001      | India        |      1001 |
  -- | C0002      | USA          |      1007 |
  -- | C0003      | UK           |      1003 |
  -- +------------+--------------+-----------+
INSERT INTO
  countries
SELECT
  *
FROM
  country_new;
-- 7. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.
  -- Create the table jobs.
  -- CREATE TABLE IF NOT EXISTS jobs (
  -- JOB_ID integer NOT NULL UNIQUE ,
  -- JOB_TITLE varchar(35) NOT NULL,
  -- MIN_SALARY decimal(6,0)
  -- );
  -- INSERT INTO jobs VALUES(1001,'OFFICER',8000);
  -- mysql> SELECT * FROM jobs;
  -- +--------+-----------+------------+
  -- | JOB_ID | JOB_TITLE | MIN_SALARY |
  -- +--------+-----------+------------+
  -- |   1001 | OFFICER   |       8000 |
  -- +--------+-----------+------------+
INSERT INTO
  jobs
VALUES(1001, 'OFFICER', 300000);
-- 9. Write a SQL statement to insert a record into the table countries to ensure that, a country_id and region_id combination will be entered once in the table.
  -- Create the table countries.
  -- CREATE TABLE IF NOT EXISTS countries (
  -- COUNTRY_ID integer NOT NULL,
  -- COUNTRY_NAME varchar(40) NOT NULL,
  -- REGION_ID integer NOT NULL,
  -- PRIMARY KEY (COUNTRY_ID,REGION_ID)
  -- );
  -- INSERT INTO countries VALUES(501,'India',185);
  -- mysql> SELECT * FROM countries;
  -- +------------+--------------+-----------+
  -- | COUNTRY_ID | COUNTRY_NAME | REGION_ID |
  -- +------------+--------------+-----------+
  -- |        501 | India        |       185 |
  -- +------------+--------------+-----------+
INSERT INTO
  countries
VALUES(501, 'Italy', 185);
-- 10. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.
  -- Create the table countries.
  -- CREATE TABLE IF NOT EXISTS countries (
  -- COUNTRY_ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  -- COUNTRY_NAME varchar(40) NOT NULL,
  -- REGION_ID integer NOT NULL
  -- );
INSERT INTO
  countries(country_name, region_id)
VALUES('India', 185);
-- 11. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column.
  -- Create the table countries.
  -- CREATE TABLE IF NOT EXISTS countries(
  --     country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  --     country_name VARCHAR(40) NOT NULL DEFAULT 'N/A',
  --     region_id INT NOT NULL
  -- );
INSERT INTO
  countries
VALUES(501, 'India', 102);
INSERT INTO
  countries(region_id)
VALUES(109);
INSERT INTO
  countries(country_name, region_id)
VALUES('Australia', 121);
-- 12. Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values which are exists in job_id column of jobs table.
  -- Sample table jobs.
  -- CREATE TABLE IF NOT EXISTS jobs(
  --     job_id INT NOT NULL UNIQUE PRIMARY KEY,
  --     job_title VARCHAR(40) NOT NULL DEFAULT '',
  --     min_salary DECIMAL(10,1) DEFAULT 80000,
  --     max_salary DECIMAL(10, 1) DEFAULT 50000000
  -- ) ENGINE=InnoDB;
  -- INSERT INTO jobs( job_id, job_title ) VALUES(1001, 'OFFICER';
  -- INSERT INTO jobs( job_id, job_title ) VALUES(1002, 'CLERK');
  -- +--------+-----------+------------+------------+
  -- | JOB_ID | JOB_TITLE | MIN_SALARY | MAX_SALARY |
  -- +--------+-----------+------------+------------+
  -- |   1001 | OFFICER   |       8000 |      20000 |
  -- |   1002 | CLERK     |       8000 |      20000 |
  -- +--------+-----------+------------+------------+
  -- CREATE TABLE IF NOT EXISTS job_history(
  --     employee_id INT NOT NULL PRIMARY KEY,
  --     job_id INT NOT NULL,
  --     department_id INT DEFAULT NULL,
  --     FOREIGN KEY ( job_id ) REFERENCES jobs( job_id )
  -- ) ENGINE=InnoDB;
INSERT INTO
  job_history
VALUES(5001, 1001, 60);
INSERT INTO
  job_history
VALUES(5002, 1002, 70);
-- 13. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and manager_id contains a unique value and that combined values must have exists into the table departments.
  -- Sample table departments.
  -- CREATE TABLE IF NOT EXISTS departments(
  --     department_id INT NOT NULL UNIQUE,
  --     department_name VARCHAR(40) NOT NULL,
  --     manager_id INT DEFAULT NULL,
  --     location_id INT DEFAULT NULL,
  --     PRIMARY KEY ( department_id, manager_id )
  -- ) ENGINE=InnoDB;
  -- INSERT INTO departments VALUES( 60, 'SALES', 201, 89);
  -- INSERT INTO departments VALUES( 61, 'ACCOUNTS', 201, 89);
  -- INSERT INTO departments VALUES( 80, 'FINANCE', 211, 90);
  -- mysql> SELECT * FROM departments;
  -- +---------------+-----------------+------------+-------------+
  -- | DEPARTMENT_ID | DEPARTMENT_NAME | MANAGER_ID | LOCATION_ID |
  -- +---------------+-----------------+------------+-------------+
  -- |            60 | SALES           |        201 |          89 |
  -- |            61 | ACCOUNTS        |        201 |          89 |
  -- |            80 | FINANCE         |        211 |          90 |
  -- +---------------+-----------------+------------+-------------+
  -- Sample table employees.
  -- CREATE TABLE IF NOT EXISTS employees(
  --     employee_id INT NOT NULL PRIMARY KEY,
  --     first_name VARCHAR(40) DEFAULT NULL,
  --     last_name VARCHAR(40) DEFAULT NULL,
  --     job_id VARCHAR(10) NOT NULL,
  --     salary DECIMAL(10, 1) DEFAULT NULL,
  --     manager_id INT DEFAULT NULL,
  --     department_id INT DEFAULT NULL,
  --     FOREIGN KEY ( department_id, manager_id )
  --         REFERENCES departments( department_id, manager_id)
  -- ) ENGINE=InnoDB;
INSERT INTO
  employees
VALUES(510, 'Alex', 'Hanes', 'CLERK', 1800000, 201, 60);
INSERT INTO
  employees
VALUES(511, 'Kim', 'Leon', 'CLERK', 5000000, 211, 80);
-- 14. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and manager_id contains a unique value and that combined values must have exists into the table departments.
  -- Sample table departments.
  --   CREATE TABLE IF NOT EXISTS departments(
  --     department_id INT NOT NULL UNIQUE,
  --     department_name VARCHAR(40) NOT NULL,
  --     manager_id INT DEFAULT NULL,
  --     location_id INT DEFAULT NULL,
  --     PRIMARY KEY (department_id)
  --   ) ENGINE = InnoDB;
  -- INSERT INTO
  --   departments
  -- VALUES(60, 'SALES', 201, 89);
  -- INSERT INTO
  --   departments
  -- VALUES(61, 'ACCOUNTS', 201, 89);
  -- mysql> SELECT * FROM departments;
  -- +---------------+-----------------+------------+-------------+
  -- | DEPARTMENT_ID | DEPARTMENT_NAME | MANAGER_ID | LOCATION_ID |
  -- +---------------+-----------------+------------+-------------+
  -- |            60 | SALES           |        201 |          89 |
  -- |            61 | ACCOUNTS        |        201 |          89 |
  -- +---------------+-----------------+------------+-------------+
  -- 2 rows in set (0.00 sec)
  -- Sample table jobs.
  --   CREATE TABLE IF NOT EXISTS jobs (
  --     JOB_ID integer NOT NULL UNIQUE PRIMARY KEY,
  --     JOB_TITLE varchar(35) NOT NULL DEFAULT ' ',
  --     MIN_SALARY decimal(6, 0) DEFAULT 8000,
  --     MAX_SALARY decimal(6, 0) DEFAULT 20000
  --   ) ENGINE = InnoDB;
  -- INSERT INTO
  --   jobs(JOB_ID, JOB_TITLE)
  -- VALUES(1001, 'OFFICER');
  -- INSERT INTO
  --   jobs(JOB_ID, JOB_TITLE)
  -- VALUES(1002, 'CLERK');
  -- mysql> SELECT * FROM jobs;
  -- +--------+-----------+------------+------------+
  -- | JOB_ID | JOB_TITLE | MIN_SALARY | MAX_SALARY |
  -- +--------+-----------+------------+------------+
  -- |   1001 | OFFICER   |       8000 |      20000 |
  -- |   1002 | CLERK     |       8000 |      20000 |
  -- +--------+-----------+------------+------------+
  -- 2 rows in set (0.00 sec)
  --   Sample table employees.
  --   CREATE TABLE IF NOT EXISTS employees(
  --     employee_id INT NOT NULL PRIMARY KEY,
  --     first_name VARCHAR(40) DEFAULT NULL,
  --     last_name VARCHAR(40) DEFAULT NULL,
  --     department_id INT DEFAULT NULL,
  --     FOREIGN KEY (department_id) REFERENCES departments(department_id),
  --     job_id INT NOT NULL,
  --     FOREIGN KEY (job_id) REFERENCES jobs(job_id),
  --     salary DECIMAL(10, 1) DEFAULT NULL
  --   ) ENGINE = InnoDB;
INSERT INTO
  employees(510, 'Alex', 'Hanes', 60, 1001, 1800000);