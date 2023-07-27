-- Listar las ciudades de la tabla LOCATIONS no tienen STATE_PROVINCE

select * from LOCATIONS where state_province is null

-- Averiguar el nombre, salario y comisi�n de aquellos empleados que tienen
--comisi�n. Tambi�n debemos visualizar una columna calculada denominada
--�Sueldo Total�, que sea el sueldo m�s la comisi�n

select first_name, salary, commission_pct, salary + commission_pct as "Sueldo Total" from employees where commission_pct is not null
