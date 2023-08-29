select
    max(salary)
from
    employees

    
select
    first_name,
    salary
from
    employees
where
    salary = (
        select
            max(salary)
        from
            employees
    )

-- Estas subconsultas se pueden usar en cualquier parte

-- Where
-- Having
-- From
