select department_id, first_name, salary 
from employees 
where (department_id, salary) in (select department_id, max(salary) from employees group by department_id)

select department_id, max(salary) from employees group by department_id


select department_id, first_name, salary 
from employees emp
where salary = (select max(salary)
               from employees
               where department_id = emp.department_id)
               
               
ndicar el nombre de los departamentos cuyo salario medio sea superior
a 9000. Usar el operador IN
