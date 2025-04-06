# Temporary Tables

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
tv_series varchar(100)
);

insert into temp_table
values
('Pranit','Kamble','Game of Thrones');

select * 
from temp_table;

-- we can use temp table for actual tabel 

create temporary table sal_above_50k 
select * 
from employee_salary
where salary >= 50000;

select * 
from sal_above_50k;

-- you cannot use this temp tabel data in another window you can only use here 