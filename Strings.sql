select first_name, UPPER(first_name)
from employee_demographics
;
select trim('       sky      ');
select ltrim('       sky      ');
select rtrim('       sky      ');

--

select first_name,
left(first_name, 4),
right(first_name, 3),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;

--

Select first_name, replace(first_name, 'a','z')
from employee_demographics;

select locate('x','Alexander');

select first_name, last_name,
CONCAT(first_name, ' ', last_name) as full_name
from employee_demographics;
