select * from employees where commission_pct = null -- Comparar un nulo con otro nulo no tiene sentido

select * from employees where commission_pct is null -- Solo para ver los nulos

select * from employees where commission_pct is not null -- Los que no son nulos