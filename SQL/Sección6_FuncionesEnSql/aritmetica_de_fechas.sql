-- Sumar un número

select sysdate from dual

select sysdate+2 from dual -- Suma dos días

select sysdate- 2 from dual -- Restar dos días

-- Cuantos dias el empleado ha trabajado en la empresa

select sysdate - hire_date, hire_date, first_name from employees
