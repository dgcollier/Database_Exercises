-- Now reverse the sort order for both queries.

-- Change the order by clause so that you order by last name before 
-- first name. Your first result should still be Irena Acton but now 
-- the last result should be Maya Zyda.
SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'M'
    AND (
        first_name = 'Irena'
    OR  first_name = 'Vidya' 
    OR  first_name = 'Maya'
) ORDER BY last_name DESC, first_name DESC;

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