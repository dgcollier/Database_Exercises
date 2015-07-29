-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead 
-- of IN — 709 rows.
-- Now add a condition to find everybody with those names who is 
-- also male — 441 rows.SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'M'
    AND (
        first_name = 'Irena'
    OR  first_name = 'Vidya' 
    OR  first_name = 'Maya'
);

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e'
    OR last_name LIKE 'e%';

-- Duplicate the previous query and update it to find all 
-- employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e'
    AND last_name LIKE 'e%';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
    AND birth_date LIKE '%-12-25';

-- Employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';