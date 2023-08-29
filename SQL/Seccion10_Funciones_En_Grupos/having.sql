-- el having es el where de group by 
-- El having se hace contra el group by
-- Estamos filtrando las filas devueltas por el grupo

select department_id, job_id, count(*) from employees
--where salary > 5000
group by department_id, job_id
having sum(salary) > 25000 and count(*) >10
order by department_id 
