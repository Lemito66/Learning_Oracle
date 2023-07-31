-- Indicar los empleados que entraron en Mayo en la empresa. Debemos
--buscar por la abreviatura del mes

select hire_date, to_char(hire_date, 'Month') from employees where RTRIM(to_char(hire_date, 'Month')) = 'Mayo'

-- Indicar los empleados que entraron en el año 2007 usando la función to_char

select hire_date, to_char(hire_date, 'Year') from employees where to_char(hire_date, 'YYYY') = 2007

-- • ¿Qué día de la semana (en letra) era el día que naciste?

select * from employees

select to_char(to_date('15-04-1998'), 'Day') from dual

--  Averiguar los empleados que entraron en el mes de Junio. Debemos
--  preguntar por el mes en letra. Nota: La función TO_CHAR puede
--  devolver espacios a la derecha)

select * from employees  where RTRIM(to_char(hire_date, 'Month')) = 'Junio'


-- Visualizar el salario de los empleados con dos decimales y en dólares y
-- también en la moneda local (el ejemplo es con euros, suponiendo que el
-- cambio esté en 0,79$)

SELECT SALARY,TO_CHAR(SALARY,'$99,999.99') AS DOLARES,
TO_CHAR(SALARY*0.79,'U99,999.99') AS EUROS FROM EMPLOYEES;

