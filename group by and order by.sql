# GroupBy
#in select and group by column should be same 

select gender ,AVG(age), MAX(age), MIN(age), COUNT(age)
from employee_demographics
GROUP BY gender ;

#Order by 

select *
from employee_demographics
order by gender ,age DESC;  # its give pririty to gender first then age 

select *
from employee_demographics
order by age, gender DESC;  # its give pririty to age first then gender





