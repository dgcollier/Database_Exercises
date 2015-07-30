-- Update your query for 'Irena', 'Vidya', or 'Maya'. 
-- Use count(*) and GROUP BY to find the number of employees 
-- for each gender with those names.
SELECT count(*), gender
FROM employees
WHERE first_name = 'Irena'
    OR  first_name = 'Vidya' 
    OR  first_name = 'Maya'
    GROUP BY gender;

-- use concat to show results in single column
SELECT CONCAT(first_name, ' ', last_name)
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

--calculate days since hired
SELECT first_name, last_name, datediff(curdate(), hire_date) AS "Days since hire"
FROM employees
WHERE hire_date LIKE '199%'
    AND birth_date LIKE '%-12-25'
    ORDER BY birth_date ASC, hire_date DESC;

-- add group by to find distinct combos of first/last name
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
    GROUP BY full_name;

-- add count and use order by to make it easy to find shared names
SELECT first_name, last_name, count(*) AS "repeats"
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
    GROUP BY first_name, last_name
    ORDER BY count(*) DESC;