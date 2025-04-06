#Limits and alias

select * 
from employee_demographics
limit 3;

select * 
from employee_demographics
limit 3,1;    # 3,1 means start from 3 row and after 3 row give 1 row

select * 
from employee_demographics
order by age DESC
limit 3;

select * 
from employee_demographics
order by age DESC
limit 2,1;

#aliasing

select gender ,AVG(age) as avg_age
from employee_demographics
group  by gender
having  AVG(age) > 40;

