-- groupby permite agrupar por una columna y aplicar una función de agregación a las demás columnas

select department_id, count(*) from employees
group by department_id
order by department_id

select department_id, job_id, count(*) from employees
group by department_id, job_id
order by department_id
