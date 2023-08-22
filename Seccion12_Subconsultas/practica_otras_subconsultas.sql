-- • Seleccionar el nombre, salario y departamento de los empleados que
--ganen mas que cualquiera de los salarios máximos de los
--departamentos 50, 60 y 70. Usar el operador ANY

select employees.first_name, employees.salary, employees.department_id
from employees 
where salary > any (select max(salary) from employees group by department_id having department_id in (50,60,70))


-- select max(salary) from employees where employees.department_id in (50,60,70)

select max(salary) from employees group by department_id having department_id in (50,60,70)

-- Indicar el nombre de los departamentos cuyo salario medio sea superior
-- a 9000. Usar el operador IN

select departments.department_name


select departments.department_name, employees.salary from employees inner join departments on (employees.department_id = departments.department_id)
where  salary > 9000

select avg(salary) from employees

select TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI') from dual
