--Concat

select first_name || ' ' || last_name from employees

-- Concat solo utiliza dos argumentos

select concat(first_name,last_name) from employees

select concat(first_name, concat(' ', last_name) )from employees -- Asi se deberia utilizar 
