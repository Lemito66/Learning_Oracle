-- Convertir las siguientes cadenas a números
-- '1210.73'   '$127.2'

select to_number('1210.73', '9999.99') from dual

select to_number('$127.2', '$999.9') from dual


-- Convertir los 3 primeros caracteres del número de teléfono en números y
--multiplicarlos por 2.


select * from employees

select to_number(substr(phone_number,1,3))*2, phone_number from employees


-- Convertir las siguientes cadenas en fecha (NOTA: el mes lo debemos
-- poner en el idioma que tengamos en el SqlDeveloper. Por ejemplo, en
-- español sería

--10 DE FEBRERO DE 2018
--FACTURA: MARZO0806

SELECT TO_DATE('10 DE FEBRERO DE 2018','dd "DE" MONTH "DE" YYYY')
FROM DUAL;

SELECT TO_DATE('FACTURA: MARZO0806','"FACTURA:" MONTHYYDD') from dual
