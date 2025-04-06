# Case statement

select first_name,
last_name,
age,
case 
	when age >= 30 then 'Young'
end
from employee_demographics;

select first_name,
last_name,
age,
case 
	when age <= 30 then 'Young'
    when age between 31 AND 50 then 'old'
    when age >= 50 then 'Too Old'
end as age_bracket
from employee_demographics;

#Task - Pay increase and bonuses
-- < 50000 then 5% 
-- > 50000 then 7 % 
-- finanace dep then 10 % bonus

SELECT  first_name,last_name,salary,
CASE 
	WHEN salary < 50000 then salary + (salary * 0.05)    # or salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END as Increment,
CASE
	WHEN dept_id = 6 THEN salary * .10
END as Bonus
FROM employee_salary;



select * 
FROM employee_salary;

select * 
FROM parks_departments;