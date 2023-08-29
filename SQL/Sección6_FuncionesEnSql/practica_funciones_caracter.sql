/* En la tabla LOCATIONS, averiguar las ciudades que son de Canada o
Estados unidos (Country_id=CA o US) y que la longitud del nombre de la
calle sea superior a 15. 

*/

select * from locations

select * from locations where (country_id = 'CA' or country_id = 'US') and (length(street_address) >15)


/*
Muestra la longitud del nombre y el salario anual (por 14) para los
empleados cuyo apellido contenga el car�cter 'b' despu�s de la 3�
posición.
*/

select first_name, last_name, length(first_name) Longitud , salary * 14 as "Salario anual" from employees 
where last_name like '___b%' 

select first_name, last_name, length(first_name) Longitud , salary * 14 as "Salario anual" from employees 
where instr(last_name, 'b') > 3

/* 
• Averiguar los empleados que ganan entre 4000 y 7000 euros y que
tienen alguna 'a' en el nombre. (Debemos usar INSTR y da igual que sea
mayúscula que minúsculas) y que tengan comisión.


*/

select * from employees where salary between 4000 and 7000 and instr(lower(first_name), 'a') <>0 and commission_pct is not null

/*
Visualizar las iniciales de nombre y apellidos separados por puntos. Por
ejemplo:
*/

select first_name, last_name, substr(first_name, 1,1) || '.' || substr(last_name, 1,1)  || '.' as "Alias" from employees

/* 
Mostrar empleados donde el nombre o apellido comienza con S

*/

SELECT first_name, last_name
FROM employees
WHERE UPPER(SUBSTR(first_name, 1, 1)) = 'S' or upper(substr(last_name,1,1)) = 'S';

SELECT first_name, last_name
FROM employees
WHERE first_name like 'S%' or last_name like 'S%';

/* 
Visualizar el nombre del empleado, su salario, y con asteriscos, el
número miles de dólares que gana. Se asocia ejemplo. (PISTA: se
puede usar RPAD. Ordenado por salario
*/

select first_name || ' ' || last_name as "Nombre y Apellido", salary, rpad('*', salary/1000, '*') 
from employees order by salary desc

