-- Indicar el n�mero de d�as que los empleados llevan en la empresa

select sysdate - hire_date from employees

-- � Indicar la fecha que ser� dentro de 15 d�as

SELECT SYSDATE+15 FROM DUAL;

-- �Cu�ntos MESES faltan para la navidad? La cifra debe salir
--redondeada, con 1 decimal
-- d�as
select trunc(to_date('25-12-2023') - sysdate, 1) from dual


-- MESES
SELECT trunc(months_between('25-12-2023', sysdate),1) from dual


-- Indicar la fecha de entrada de un empleado y el �ltimo d�a del mes que entr�

select hire_date, last_day(hire_date) "Ultimo D�a del Mes que Entr�" from employees

-- Utilizando la funci�n ROUND, indicar los empleados que entraron en los
--�ltimos 15 d�as de cada mes


select first_name, last_name, round(hire_date, 'MONTH'), hire_date from employees where round(hire_date, 'MONTH') > hire_date
