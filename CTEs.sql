-- CTEs

With CTE_Example AS
(
select employee_id, gender, birth_date
from employee_demographics
where birth_date>'1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from employee_Salary
where salary>50000
)
select *
from CTE_Example
join CTE_Example2
	on CTE_Example.employee_id=CTE_Example2.employee_id
    