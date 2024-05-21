SELECT region,AVG(population)
FROM country
GROUP BY region;

SELECT *
FROM country
GROUP BY region;

SELECT region,AVG(population),MAX(population),MIN(population),count(population)
FROM country
GROUP BY region;

SELECT *
FROM country
order by region DESC;



-- Having Vs where
SELECT region,AVG(population)
FROM country
WHERE region LIKE '% Africa%'
GROUP BY region
HAVING AVG(population)>2098087;