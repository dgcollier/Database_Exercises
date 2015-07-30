-- Update your query for 'Irena', 'Vidya', or 'Maya'. 
-- Use count(*) and GROUP BY to find the number of employees 
-- for each gender with those names.
SELECT count(*), gender
FROM employees
WHERE first_name = 'Irena'
    OR  first_name = 'Vidya' 
    OR  first_name = 'Maya'
GROUP BY gender;

-- Update your queries for employees with 'E' in their last name to 
-- sort the results by their employee number. 
-- Your results should not change!
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e'
    OR last_name LIKE 'e%'
ORDER BY emp_no DESC;


-- Duplicate the previous query and update it to find all 
-- employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e'
    AND last_name LIKE 'e%';

-- Change the query for employees hired in the 90s and born on 
-- Christmas such that the first result is the oldest employee 
-- who was hired last. It should be Khun Bernini.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
    AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';