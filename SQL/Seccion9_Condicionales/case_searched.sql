-- case searched

select first_name, salary,
case 
    when salary < 10000 then 'Low'
    when salary between 10000 and 20000 then 'Medium'
    else 'High'
end as salary_range
from employees;

select * from employees



