-- Any que se cumpla la condición

-- <, >,  =, <>

select first_name, last_name, job_id, salary 
from employees
where salary > any (select salary from employees where job_id = 'IT_PROG')
and job_id <> 'IT_PROG'


-- all tienen que coincidir todos 

select first_name, last_name, job_id, salary 
from employees
where salary > all (select salary from employees where job_id = 'IT_PROG')
and job_id <> 'IT_PROG'
