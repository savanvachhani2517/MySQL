select first_name, last_name, age,
CASE
	when age<=30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age>=50 then "On death's door"
end as age_bracket
from employee_demographics;

-- Pay Increase and Bonus
-- <50000=5%
-- >50000=7%
-- Finance= 10% bonus

select emp.first_name, emp.last_name, emp.salary,
case
	when salary<50000 then (salary*0.05+salary)
    when salary>50000 then (salary*0.07+salary)
end as salary_hike,
case
	when dept_id=6 then (salary*0.10)
end as bonus
from employee_salary as emp
join parks_departments as pd
on emp.dept_id=pd.department_id