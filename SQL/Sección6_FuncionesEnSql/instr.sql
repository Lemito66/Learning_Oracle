-- Instr(c1,c2)

-- Devolver la posiciion que ocupa una determinada cadena dentro de otra

select first_name from employees

-- En que posición tiene la letra a

select first_name, instr(first_name, 'a') from employees -- Devuelve 0 cuando no se cumple

select first_name, instr(lower(first_name), 'a') from employees where instr(lower(first_name), 'a') <>0

-- Buscar la letra 'a' a partir de la posición 4

select first_name, instr(lower(first_name), 'a',4) from employees where instr(lower(first_name), 'a',4) <>0

