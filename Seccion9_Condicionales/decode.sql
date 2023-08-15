--decode(valor, resultado, valor, resultado, sinosecumplenada)
select
    first_name,
    department_id
from
    employees
    
select
    first_name,
    department_id,
    decode (
        department_id,
        10,
        'Administration',
        20,
        'Marketing',
        30,
        'Purchasing',
        40,
        'Human Resources',
        50,
        'Shipping',
        60,
        'IT',
        'Other'
    ) as department_name
from
    employees
