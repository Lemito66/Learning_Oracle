-- inner
select
    employees.first_name,
    departments.department_name
from
    employees
    inner join departments on (
        departments.department_id = employees.department_id
    )
    
-- rigth    
select
    employees.first_name,
    departments.department_name
from
    employees
    right outer join departments on (
        departments.department_id = employees.department_id
    )
    
 --left   
select
    employees.first_name,
    departments.department_name
from
    employees
    left outer join departments on (
        departments.department_id = employees.department_id
    )
    
-- full

select
    employees.first_name,
    departments.department_name
from
    employees
    full outer join departments on (
        departments.department_id = employees.department_id
    )
