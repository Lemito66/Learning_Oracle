--lpad
-- rpad

-- La rellena a partir del fin o inicio de la cadena. (rigth, left)

select first_name from employees

select first_name, rpad(first_name, 20, '*') from employees

select first_name, lpad(first_name, 20, '*') from employees
