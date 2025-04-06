# window functions 
# window func is simliar to group by but in here they keep their unique rowes in the o/p

-- using group by 
select dem.first_name,dem.last_name,gender ,avg(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by dem.first_name,dem.last_name,gender;

-- using window function

select dem.first_name,dem.last_name,gender ,avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- rolling total means adding subsequnt rowes bassed on your partition

select dem.first_name,dem.last_name,gender,salary,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- Row Number
-- just like avg number or like indexing 

select dem.employee_id,dem.first_name,dem.last_name,gender,salary,
row_number() over(partition by gender order by salary DESC) as row_num,
rank() over(partition by  gender order by salary DESC) as rank_num,  #  its give you rank position
dense_rank() over(partition by gender order by salary DESC) as dense_rank_num  # it gives you dense rank numerically
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;



