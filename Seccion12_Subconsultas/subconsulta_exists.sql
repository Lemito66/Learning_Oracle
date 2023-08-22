-- exists | not exists


select department_name 
from departments 
where not exists(select * 
                from employees 
                where department_id = departments.department_id)
                
select department_name 
from departments 
where  exists(select * 
                from employees 
                where department_id = departments.department_id)
