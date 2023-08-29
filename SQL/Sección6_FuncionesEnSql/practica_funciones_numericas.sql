--Visualizar el nombre y salario de los empleados de los que el número de
--empleado es impar (PISTA: MOD)

select first_name, salary, employee_id from employees where mod(employee_id,2) = 1


--• Prueba con los siguientes valores aplicando las funciones TRUNC y
--ROUND, con 1 y 2 decimales

select trunc(2567.0,1) from dual

select round(5648.99846, 3) from dual
