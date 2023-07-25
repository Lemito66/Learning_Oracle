--Visualizar el nombre y el n�mero de tel�fono de los empleados

select * from employees

select first_name || ' ' || last_name as "Nombre y Apellido" from employees

select first_name, phone_number from employees

-- Visualizar el nombre y el tipo de trabajo de los empleados (FIRST_NAME, JOB_ID). Debe aparecer en la cabecera NOMBRE Y Tipo de Trabajo.

select FIRST_NAME as Nombre, JOB_ID as "Tipo de Trabajo" from employees

-- Selecciona todas las columnas de la tabla REGIONS

select * from REGIONS

--Indicar los nombres de los pa�ses de la tabla COUNTRIES
select country_name from COUNTRIES

--Seleccionar las columnas STREET_ADDRESS, CITY, STATE_PROVINCE de la table LOCATIONS. Debemos poner las columnas como direcci�n, Ciudad y Estado
select STREET_ADDRESS as "Direcci�n", CITY as "Ciudad", STATE_PROVINCE as "Estado" from locations
