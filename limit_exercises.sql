-- List the first 10 distinct last name sorted in descending order.
SELECT last_name 
FROM employees
GROUP BY last_name DESC
LIMIT 10;

-- Find your query for employees born on Christmas & hired in the 90s.
-- Update it to find just the first 5 employees.
-- Update the query to find the tenth batch of results.
SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;