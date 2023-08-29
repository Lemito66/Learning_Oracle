-- Multiples filas 

-- any  in all

select * from employees where department_id in (10,20,30)

select max(salary) from employees group by department_id

select first_name, salary, department_id 
from employees 
where (department_id, salary) in (select department_id, max(salary) from employees group by department_id)
