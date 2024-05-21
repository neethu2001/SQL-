-- limit & aliasing

SELECT *
FROM country
LIMIT 3;
-- SHOWS ONLY FIRST 3 ROWS

SELECT *
FROM country
ORDER BY population DESC
LIMIT 2,1;

-- aliasing  - changing the name of columns
SELECT region, AVG(population) as avg_population
FROM country
GROUP BY region
HAVING AVG(population)>2783032;

SELECT *
FROM city
INNER JOIN countrylanguage
	ON city.CountryCode=countrylanguage.CountryCode;
    
SELECT *
FROM city as c
LEFT JOIN countrylanguage as cl
	ON c.CountryCode=cl.CountryCode;

SELECT *
FROM city as c
RIGHT JOIN countrylanguage as cl
	ON c.CountryCode=cl.CountryCode;

SELECT *
FROM city as c
RIGHT JOIN countrylanguage as cl
	ON c.CountryCode=cl.CountryCode;

-- self join- tie table to itself
SELECT *
FROM city c1
JOIN city c2
	ON c1.CountryCode=c2.CountryCode

SELECT c1.Countrycode AS c1_countrycde,
c1.Name AS names,
c1.district AS dist,
c2.Countrycode AS c2_countrycde,
c2.Name AS name_s,
c2.district AS districts
FROM city c1
JOIN city c2
	ON c1.CountryCode=c2.CountryCode


-- joining multiple tables together
SELECT *
FROM  city AS c
INNER JOIN countrylanguage AS cl
	ON c.country_ode=l.country_code
INNER JOIN country
	ON  