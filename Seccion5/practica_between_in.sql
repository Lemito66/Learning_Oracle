--Averiguar los empleados que están entre el departamento 40 y el 60
select * from employees where department_id between 40 and 60

--Visualizar los empleados que entraron entre 2002 y 2004
select * from employees where hire_date between '01-01-2002' and '31-12-2004'

--Indica los apellidos de los empleados que empiezan desde ‘D’ hasta ‘G’;

select * from employees where last_name between 'D' and 'G'

--Averiguar los empleados de los departamentos 30,60 y 90. Hay que usar la
--cláusula IN
select * from employees where department_id in (30,60,90)

--Averiguar los empleados que tienen el tipo de trabajo IT_PROG y PU_CLERK.
select first_name, job_id from employees where job_id in ('IT_PROG', 'PU_CLERK')

-- Indica las ciudades que están en Inglaterra (UK) y Japón (JP).. Tabla
--LOCATIONS

select * from locations where country_id in ('UK', 'JP')
