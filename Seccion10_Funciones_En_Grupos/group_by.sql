-- groupby permite agrupar por una columna y aplicar una funci�n de agregaci�n a las dem�s columnas

select department_id, count(*) from employees
group by department_id
order by department_id

select department_id, job_id, count(*) from employees
group by department_id, job_id
order by department_id
