-- Para visualizar las primeras 5 filas 
-- Fetch siempre va al final
select * from employees fetch first 5 rows only


select * from employees fetch first 10 rows only


select * from employees order by salary desc fetch first 5 rows only

select * from employees order by salary desc fetch first 7 rows with ties -- Para poner los gemelos 

--Para saltarnos las 5 primeras filas 
select * from employees order by salary desc offset 5 rows fetch first 7 rows with ties

-- 20% de filas

SELECT * FROM Employees  fetch first 20 percent rows only
