-- Stored Procedures

select *
from employee_salary
where salary>=50000;

Create procedure large_salary()
select *
from employee_salary
where salary>=50000;

call large_salary();

Delimiter $$
Create procedure large_salary3()
Begin
	select *
	from employee_salary
	where salary>=50000;
	select *
	from employee_salary
	where salary>=10000;
end $$
Delimiter ;

call large_salary3();



Delimiter $$
Create procedure large_salary5(muffin INT)
Begin
	select salary
	from employee_salary
    where employee_id=muffin
	;
end $$
Delimiter ;
call large_salary5(1)