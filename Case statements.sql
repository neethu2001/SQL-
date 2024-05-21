-- case statements

SELECT first_name,
last_name,
address_id,
CASE
	WHEN address_id >= 4 THEN 'Young'
    WHEN address_id BETWEEN 2 and 4 THEN 'old'
END
FROM staff;

-- pay inrease and bonus
-- <50000=5%
-- >50000=7%
-- Finane = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary< 50000 THEN salary + (salary *0.05)
END AS new_salary
FROM employee_salary;

SELECT first_name, last_name, salary,
CASE
	WHEN salary > 45000 THEN salary + (salary * 0.05)
    WHEN salary < 45000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;