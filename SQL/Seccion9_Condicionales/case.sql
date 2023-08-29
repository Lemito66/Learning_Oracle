-- Case, nos permite comprobar distintas condiciones
select
    *
from
    employees
select
    first_name,
    job_id,
    case job_id
        when 'SH_CLERK' then 'Tipo 1'
        when 'ST_MAN' then 'Tipo 2'
        when 'ST_CLERK' then 'Tipo 3'
        else 'Sin definir'
    end as tipo
from
    employees
where
    department_id = 50


-- Otro ejemplo
select first_name, last_name, 
case 
    when salary > 10000 then 'Alto'
    when salary > 5000 then 'Medio'
    else 'Bajo'
end as rango
from employees
where department_id = 50

