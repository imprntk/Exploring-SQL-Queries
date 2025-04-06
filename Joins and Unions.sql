#Joins

select * 
from employee_demographics;

select * 
from employee_salary;

#either you can use join or inner join bothn are same

select * 
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

select dem.employee_id,age,occupation
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

#outer join

select * 
from employee_demographics as dem
left join employee_salary as sal
on dem.employee_id = sal.employee_id;

select * 
from employee_demographics as dem
right join employee_salary as sal
on dem.employee_id = sal.employee_id;

# self joins

select  emp1.employee_id as emp_id_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_id,
emp2.first_name as first_name_,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id
;

# joining multiple tables

select * from parks_departments;

select * 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as dep
	on sal.dept_id = dep.department_id
;

# Unions

select first_name,last_name 
from employee_demographics
union             					# took out duplicates only print uniqu rowes
select first_name,last_name
from employee_salary
;

# the company want to know who has age > 40 and salary > 70000 to reduce the explenses 

select first_name,last_name, 'Old Man' as Label
from employee_demographics
where age > 40 
union 
select first_name,last_name, 'Old Lady' as Label
from employee_demographics
where age > 40   
union           					
select first_name,last_name,'Hight Paid emp' as Label
from employee_salary
where salary = 70000
order by first_name,last_name 
;

select first_name,last_name 
from employee_demographics
union all          					
select first_name,last_name
from employee_salary
;


