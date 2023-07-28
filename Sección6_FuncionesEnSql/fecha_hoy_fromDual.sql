-- Tener la fecha de hoy en formato dd/mm/yyyy por ejemplo 01/01/2019 en la tabla dual

select to_char(sysdate, 'dd/mm/yyyy') from dual;