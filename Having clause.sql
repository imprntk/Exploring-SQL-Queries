# where and handler

# in having after group by we can use aggregae functions
# for agg function you have to use having cluase

select * 
from employee_salary;

select occupation,AVG(salary) 
from employee_salary
where occupation like "%manager%"
group by occupation
HAVING AVG(salary) > 50000;
