# Store Procedures

-- simple example

create procedure large_salary() 
select * 
from employee_salary
where salary >= 50000
;

call large_salary();

-- use this when more than 1 condtions

delimiter $$
create procedure large_salaries2()
begin

select * 
from employee_salary
where salary >= 50000;
select * 
from employee_salary
where salary >= 10000;

end $$
delimiter ;

call large_salaries2();

-- parameter (inputs) 

delimiter $$
create procedure large_salaries3(par_employee_id int)
begin

select salary 
from employee_salary
where employee_id = par_employee_id;

end $$
delimiter ;

call large_salaries3(1);


