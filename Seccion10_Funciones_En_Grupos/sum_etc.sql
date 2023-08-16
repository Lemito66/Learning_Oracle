select sum(salary), count(*), sum(salary)*12 as "Suma Anual" from employees 

select sum(salary) from employees where department_id = 50


-- Fecha de hoy, día/mes/año y con hora

select tochar(sysdate, 'dd/mm/yyyy hh24:mi:ss') from dual