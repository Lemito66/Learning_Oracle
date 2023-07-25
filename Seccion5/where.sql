-- Where

select * from employees where department_id = 50

/* 
= Igual
> Mayor que
< Menor que
>= Mayor o igual que
<= Menor o igual que
<> Distinto

*/

-- Salario mayor a 5000
select * from employees where salary > 5000

-- No trabajan en el departamento 50

select * from employees where department_id <> 50
