create table empleado (
codigo number primary key,
nombre varchar2(100) not null,
salary number check (salary > 1000)
)
select * from empleado
insert into empleado values(1,'Emill', 1001)




