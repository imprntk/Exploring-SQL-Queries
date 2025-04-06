# Triggers and Events

select * 
from employee_demographics;

select * 
from employee_salary;

-- trigger
-- triggr activate when new emp details is insert into employee salary table 
-- then trigger will automatically insert new emp data into employee demographic table

delimiter $$ 
create trigger new_emp_insert
	after insert on employee_salary
    for each row 
begin
	insert into employee_demographics(employee_id,first_name,last_name)
    values (new.employee_id,new.first_name,new.last_name);
end $$
delimiter ;

insert into employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
values(13,'Pranit','Kamble','Entertaiment CEO',100000,null)
;
-- after inserting this in employee demographics table automatically updated with this details

# Events
-- trigger happens when event takes place

-- task - when emp are get over 60 age then we have to retire them with big paycheck

delimiter $$
create event delete_retiries
on schedule every 30 second
do

begin 
	delete 
    from employee_demographics
    where age >= 60;
end $$

delimiter ;

show variables like 'event%' 
