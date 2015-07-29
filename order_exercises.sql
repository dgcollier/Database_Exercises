-- Modify your first query to order by first name. 
-- The first result should be Irena Majewski and the 
-- last result should be Vidya Schaft.
SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'M'
    AND (
        first_name = 'Irena'
    OR  first_name = 'Vidya' 
    OR  first_name = 'Maya'
) ORDER BY first_name ASC;

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

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';