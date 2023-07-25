-- Like 'Patron'
-- % cualquier car�cter
-- _ caracter en ubicaci�n especifica
-- Solo funciona con cadena de caracteres

select * from employees where first_name like '%en'

select * from employees where last_name like '_a%'

select * from employees where last_name like '%te%'
