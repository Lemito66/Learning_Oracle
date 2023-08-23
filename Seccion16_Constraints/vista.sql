create view employer_id_50
as select * from employees where employees.department_id = 50

select manager_id, count(*) from employer_id_50
group by manager_id

drop view employer_id_50

