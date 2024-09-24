-- WHERE Clause

select*
from employee_salary
where first_name="Leslie";

select*
from employee_salary
where salary>=50000;

select*
from employee_demographics
where gender!='Female';

-- AND or NOT -- Logical Operators
select*
from employee_demographics
where birth_date> '1985-01-01'
or gender ='male'
;

select*
from employee_demographics
where (first_name='Leslie' and age=44) or age>55
;

-- LIKE Statement
-- % and _
select*
from employee_demographics
where first_name LIKE 'a___%';