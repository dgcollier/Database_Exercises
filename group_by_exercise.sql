-- 1. use DISTINCT to find unique titles
-- 2. sort alphabetically
SELECT DISTINCT title
FROM titles
ORDER BY title;

-- 1. use GROUP BY and find unique employee last names starting with "e"
SELECT last_name
FROM employees
WHERE last_name LIKE '%e'
    AND last_name LIKE 'e%'
GROUP BY last_name;