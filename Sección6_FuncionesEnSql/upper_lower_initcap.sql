-- Lower
--Upper
-- INITCAP


select email, lower(email) from employees

select email, upper(email) from employees

select email, initcap(email) from employees --Primera letra de la oración en mayúscula

select initcap('Esto es una oración') from dual
