-- Substr(cadena, posicion, longitud)
-- Recuperar parte de una cadena 

select first_name, substr(first_name, 0, 3) as "Tres Primeras Posiciones" from employees

-- Ultimas 3 posiciones

select first_name, substr(first_name,3) as "Tres Ultimas Posiciones" from employees

-- Sacar la ultima posición
-- Extract a substring from a string (string, start at position 5, extract 3 characters):

select first_name, substr(first_name, length(first_name ), 1)  as "Ultima Posiición)" from employees
 
