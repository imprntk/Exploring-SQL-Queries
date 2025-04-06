#  CTE 

with CTE_Example as 
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal,
count(salary) as count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from CTE_Example;

-- or we can use below one but this looks difficult to read thats why we use CTE Functions
 
select avg(avg_sal)
from (
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal,
count(salary) as count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
) example_subquery;

-- Multiple Queries or complex queries

with CTE_Example1 as 

(select employee_id,gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'
),
CTE_Example2 as

(select employee_id,salary
from employee_salary
where salary > 50000
)

select *
from CTE_Example1
join CTE_Example2
	on CTE_Example1.employee_id = CTE_Example2.employee_id
;

-- columns name change directly in CTE

with CTE_Example(Gender,Avg_Sal,Max_Sal,Min_Sal,Count_Sal) as 
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal,
count(salary) as count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_Example;