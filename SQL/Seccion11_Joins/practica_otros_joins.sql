-- Indicar el nombre del empleado y el de su jefe (SELF_JOIN de la tabla EMPLOYEES)
select * from countries
select * from locations
select * from countries
select * from regions
select * from departments
select * from employees

select empleado.first_name, jefe.first_name, empleado.manager_id, jefe.employee_id
from employees empleado 
join employees jefe on (empleado.manager_id = jefe.employee_id)


-- Indica el DEPARTMENT_NAME y la suma de salarios de ese departamento
-- ordenados ascendentemente y que aparezcan también los
-- DEPARTMENT_NAME que no tengan empleados.

select departments.department_name , sum(employees.salary )
from departments full outer join  employees on (employees.department_id = departments.department_id)
group by departments.department_name, employees.salary 
order by sum(employees.salary ) asc 


-- • Visualizar la ciudad y el nombre del departamento, incluidas aquellas
-- ciudades que no tengan departamentos
select * from countries
select * from locations
select * from countries
select * from regions
select * from departments
select * from employees


select countries.country_name, departments.department_name from departments
inner join locations on (departments.location_id = locations.location_id)
right outer  join countries on (countries.country_id = locations.country_id)
