select * from employees

select * from employees where hire_date = '17-06-2003'

select employee_id, first_name || ' ' || last_name as "Nombre y Apellido", 'N' from employees

grant select on employees to editor,dbaeditor,mv2000,dbamv
select cd_prestador, nm_prestador, 'S' from prestador order by 2

-- Averigua los empleados que trabajen en el departamento 100

select * from employees where department_id = 100

-- Usando la tabla LOCATIONS, averigua el nombre de la Ciudad (city) y la
--direcci�n (Street_address) de los departamentos situados en Estados Unidos
--(COUNTRY_ID=US)

select City, street_address from locations where country_id = 'US'

-- Visualiza los pa�ses que est�n en la regi�n 3. (REGION_ID de la tabla
--COUNTRIES

select * from countries where region_id = 3

--Averiguar el nombre y salario de los empleados que NO tengan como jefe al
--MANAGER 114 (columna MANAGER_ID)

select first_name, salary from employees where manager_id <> 114

-- Visualizar los empleados que empezaron a trabajar a partir del a�o 2006

select first_name, hire_date from employees where hire_date >= '01-01-2006'

-- Seleccionar los empleados que tenga como tipo de trabajo ‘ST_CLERK’

select * from employees where job_id = 'ST_CLERK'

-- Indicar los datos de los empleados que tengan como apellidos “Smith”
--(LAST_NAME)

select * from employees where last_name = 'Smith'
