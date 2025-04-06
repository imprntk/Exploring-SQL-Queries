# LIKE 

select * from employee_demographics
where first_name LIKE 'Jer%';   # measn give you name start with something like Jer

select * from employee_demographics
where first_name LIKE '%er%'; # means in the name their is middle letter are er this give you name who has er letters in name 

# %er% means %er means any charactor brfore er and er% means any charactor after er

# _ used for specific coondition

select * from employee_demographics
where first_name LIKE 'a__';  # means give after a only two charactor
  
select * from employee_demographics
where first_name LIKE 'a__%';  # measn gives name who has greter than 3 charactor

select * from employee_demographics
where birth_date LIKE '1989%';