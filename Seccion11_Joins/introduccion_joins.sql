select * from employees

select employees.department_id  from employees
inner join departments on employees.department_id = departments.department_id

select empleado.department_id from employees as empleado
