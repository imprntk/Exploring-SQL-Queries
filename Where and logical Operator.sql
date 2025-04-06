# WHERE clause

select * 
from employee_salary
where first_name = 'Leslie'
;

select * 
from employee_salary
where salary < 50000
;

select * 
from employee_demographics
where birth_date > '1980-01-01';

# Logical Operators == AND ,OR ,NOT

select * from
employee_demographics
where birth_date > '1980-01-01'
AND gender = 'Male';

select * from
employee_demographics
where birth_date > '1980-01-01'
OR gender = 'Male';

select * from
employee_demographics
where birth_date > '1980-01-01'
OR NOT gender = 'Male';

select * from 
employee_demographics
where (first_name = 'Leslie' AND age = 44) OR age > 40;

