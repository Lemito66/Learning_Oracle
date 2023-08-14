/*
� De la tabla LOCATIONS visualizar el nombre de la ciudad y el estadoprovincia. En el caso de que no tenga que aparezca el texto �No tiene�
*/
select nvl(city,'No tiene'), nvl(state_province, 'No tiene') from locations

select * from employees

select * from locations


/* Visualizar el salario de los empleados incrementado en la comisión
(PCT_COMMISSION). Si no tiene comisión solo debe salir el salario */

select salary, nvl(salary,0) + nvl(commission_pct,0) from employees

/*
• Seleccionar el nombre del departamento y el manager_id. Si no tiene,
debe salir un -1
 
*/

select nvl(manager_id, -1), nvl(department_id,-1) from employees

/* 
De la tabla LOCATIONS, devolver NULL si la ciudad y la provincia son
iguales. Si no son iguales devolver la CITY.
*/

select * from locations

select nullif(city, state_province) from locations
