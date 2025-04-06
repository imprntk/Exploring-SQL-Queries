#subqueries

-- 1.In where clause
-- give me the info where dept_id = 1

select *
from employee_demographics
where employee_id in ( 
					select employee_id
                    from employee_salary
                    where dept_id = 1
);

-- 2.In select statement
-- compare avg salary

select  first_name, salary,
(select avg(salary)               # we can calculate avg regardless group by 
from employee_salary
)
from employee_salary;

-- 3. in from satement


select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender;

select avg(max_age)                     #avg(age),max(age),min(age),count(age) this all are columns now 
from 
(select gender,
avg(age) as avg_age,
max(age) as max_age,
min(age) as min_age,
count(age) as count_age
from employee_demographics
group by gender) as  agg_tabel
;

-- or

select avg(`max(age)`)                     #avg(age),max(age),min(age),count(age) this all are columns now 
from 
(select gender,
avg(age),
max(age),
min(age),
count(age)
from employee_demographics
group by gender) as  agg_tabel
;