-- Using 

select department_name, first_name
from employees join departments
using (department_id)

select * from employees
select * from departments
