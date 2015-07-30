-- List the first 10 distinct last name sorted in descending order.
SELECT last_name 
FROM employees
GROUP BY last_name DESC
LIMIT 10;