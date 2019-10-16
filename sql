-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)

SELECT 
first_name, customer_id
FROM
customer
WHERE first_name ILIKE '%Dan%';




-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan) 
SELECT 
last_name, customer_id
FROM
customer
WHERE last_name ILIKE '%dan%';




-- now add the results of the first query to the results of the second (UNION)

SELECT 
first_name, last_name, customer_id
FROM
customer
WHERE first_name ILIKE '%Dan%'
UNION 
SELECT 
first_name, last_name, customer_id
FROM
customer
WHERE last_name ILIKE '%dan%';





-- find customers exist in both queries
-- hint: there's one

SELECT 
first_name, last_name, customer_id
FROM
customer
WHERE first_name ILIKE '%Dan%'
INTERSECT
SELECT 
first_name, last_name, customer_id
FROM
customer
WHERE last_name ILIKE '%dan%';





-- find all film with 'Fred' in the title
SELECT 
film_id, title
FROM 
film
WHERE 
title ILIKE '%Fred%';




--find all films that mention squirrels in the description
SELECT 
film_id, description
FROM 
film
WHERE 
description ILIKE '%squirrel%';



--find the intersection of the two previous subqueries
-- hint: there's two

SELECT 
film_id, title
FROM 
film
WHERE 
title ILIKE '%Fred%'
AND
description ILIKE '%squirrel%';