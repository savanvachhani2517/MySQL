-- Joins

Select *
from employee_demographics;

Select*
from employee_salary;

Select dem.employee_id,age,occupation
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id=sal.employee_id
;

-- OUTER JOIN
Select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id=sal.employee_id
;

-- Self Join

Select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id+1=emp2.employee_id
;

-- Joining multiple tables together
Select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id=sal.employee_id
inner join parks_departments as pd
	on sal.dept_id=pd.department_id
;

select *
from parks_departments;
