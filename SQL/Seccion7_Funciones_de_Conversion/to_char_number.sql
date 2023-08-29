-- to_char(numero, formato)

/*
9 Número
0 Visualiza un cero
$ dolar
L moneda Actual
. punto decimal
, miles separador
*/
select salary from employees

select to_char(45645455, '$') from dual

select to_char(salary, '999999999') from employees


select to_char(salary, '$999999999') from employees

select to_char(salary, 'L999999999') from employees

select to_char(salary, 'L999999999.99') from employees
