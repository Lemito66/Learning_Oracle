/*
and c1 and c2 -> true cuando c1 y c2 son true
or c1 or c2 -> true cuando c1 o c2 son true
not not c1 -> true  cuando c1 es false
 */
 
select * from employees where salary > 500 and department_id = 50
 
select * from employees where salary > 500 or department_id = 50

select * from employees where department_id  not in (50,60)
