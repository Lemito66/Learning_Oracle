-- Replace (cadena, original, nueva)

select replace (lower(first_name), 'a', '*') from employees -- Las 'a' las remplaza por asteriscos

-- LTRIM, RTRIM -- Quita los espacios tanto uno es izquierda y el otro de derecha
-- Si no doy parametros asume que son espacios, sino podemos darle un parametro de la palabra a quitar
SELECT RTRIM('Hola     ') || ' Adios' from dual

select first_name , ltrim(lower(first_name), 'a') from employees where ltrim(lower(first_name),'a')<>'a'

select first_name , rtrim(lower(first_name), 'a') from employees where rtrim(lower(first_name),'a')<>'a'
