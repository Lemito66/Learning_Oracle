-- nvl es una funcion que permite sustituir un valor nulo por otro valor

SELECT nvl(null, 0) FROM dual;

select commission_pct, nvl(commission_pct,0) ,salary from employees
