-- Sumar un n�mero

select sysdate from dual

select sysdate+2 from dual -- Suma dos d�as

select sysdate- 2 from dual -- Restar dos d�as

-- Cuantos dias el empleado ha trabajado en la empresa

select sysdate - hire_date, hire_date, first_name from employees
