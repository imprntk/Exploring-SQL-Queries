# String Functions

Select length('Pranit');

select first_name,length(first_name)
from employee_demographics
;

select upper('sky');
select lower('SKY');

select first_name,upper(first_name)
from employee_demographics;

select first_name,lower(first_name)
from employee_demographics;

#trim is used to get rid of white spaces

select trim('      sky       '); 

select ltrim('       sky     '); #get rid of left spaces

select rtrim('       sky     ');  # get rid of right spaces

#substring

select first_name,
left(first_name,4),   # means first left 4 charactor of of first name 
right(first_name,4),  # means first rigth 4 charactor of of first name
substring(first_name,2,3),  # 2 is starting position and 3 is how much charactor you want
birth_date,
substring(birth_date,6,2) as Month  #use for birthdates if we want month or year
from employee_demographics;

#replace
# like Pranit replace with paanit it replace r with a 

select first_name, replace(first_name,'r','a')  # it replaces e char in name with a 
from employee_demographics;

#locate

select first_name, locate('An',first_name)
from employee_demographics;

#concat

select first_name, last_name,
concat(first_name,' ',last_name) as Full_Name
from employee_demographics;