SELECT * FROM
parks_and_recreation.employee_demographics;

select first_name,
last_name,
age,
(age + 10) * 10
FROM employee_demographics;

# use distinct 

select distinct first_name 
from employee_demographics;

SELECT DISTINCT gender
FROM employee_demographics;