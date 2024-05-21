-- string funtions
SELECT LENGTH('skyfall');

SELECT first_name,LENGTH(first_name)
FROM staff
ORDER BY 2;

-- upper
SELECT UPPER('sky');
SELECT LOWER('sky');
SELECT first_name,UPPER(first_name)
FROM staff;


-- trim helps for removing white spaces
SELECT ('              SKY            ');
SELECT TRIM('               SKY            ');

-- LTRIM for removing white space from left side
SELECT LTRIM('               SKY            ');
-- RTRIM for removing white space from right side
SELECT RTRIM('               SKY            ');

-- LEFT - choosing that particular no letters from left side
-- RIGHT - choosing that particular no letters from right side
-- SUBSTRING - choosing from a  particular no as 3, choosing from 3 rd letter and choose 2 nos which is mentioned after that 
SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),
password,
SUBSTRING(password,2,3)
FROM staff;

SELECT first_name, LOCATE('AN',first_name)
FROM actor;

-- CONCAT
SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM actor;