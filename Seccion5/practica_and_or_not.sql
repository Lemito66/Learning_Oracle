/* 
 Obtener el nombre y la fecha de la entrada y el tipo de trabajo de los
empleados que sean IT_PROG y que ganen menos de 6000 dólares
*/
select * from employees where job_id = 'IT_PROG' and salary < 6000

/* 
 Seleccionar los empleados que trabajen en el departamento 50 o 80,
cuyo nombre comience por S y que ganen más de 3000 dólares
*/
select * from employees where (department_id = 50 or department_id = 80) and (first_name like 'S%' and salary >3000)

/*
¿Qué empleados de job_id IT_PROG tienen un prefijo 5 en el teléfono
y entraron en la empresa en el año 2007?
*/

select * from employees where phone_number like '5%' and hire_date > '01-01-2007'
