select
    *
from
    employees
-- Literales 

select
    'El empleado ' || first_name || ' del departamento ' || department_id || ' tiene un salario de ' || salary as Salarios
from
    employees
