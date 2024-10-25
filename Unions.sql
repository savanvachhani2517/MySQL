-- Unions (Helps to combined rows from different tables)

select first_name, last_name
from employee_demographics
union distinct   -- Distinct is use to get the distinct item where as 'all' is used for getting all the items
select first_name, last_name
from employee_salary;

select first_name, last_name, 'Old Man' as label
from employee_demographics
where age>40 and gender = 'Male'
union
select first_name, last_name, 'Old Lady' as label
from employee_demographics
where age>40 and gender ='Female'
union
select first_name, last_name, 'Highly Paid Employee' as label
from employee_salary
where salary>70000
order by first_name, last_name
;