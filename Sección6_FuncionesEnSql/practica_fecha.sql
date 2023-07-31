-- Indicar el número de días que los empleados llevan en la empresa

select sysdate - hire_date from employees

-- • Indicar la fecha que será dentro de 15 días

SELECT SYSDATE+15 FROM DUAL;

-- ¿Cuántos MESES faltan para la navidad? La cifra debe salir
--redondeada, con 1 decimal
-- días
select trunc(to_date('25-12-2023') - sysdate, 1) from dual


-- MESES
SELECT trunc(months_between('25-12-2023', sysdate),1) from dual


-- Indicar la fecha de entrada de un empleado y el último día del mes que entró

select hire_date, last_day(hire_date) "Ultimo Día del Mes que Entró" from employees

-- Utilizando la función ROUND, indicar los empleados que entraron en los
--últimos 15 días de cada mes


select first_name, last_name, round(hire_date, 'MONTH'), hire_date from employees where round(hire_date, 'MONTH') > hire_date
