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
select
    first_name,
    department_id
from
    employees
where
    department_id = (
        select
            department_id
        from
            employees
        where
            first_name = 'Douglas'
            and last_name = 'Grant'
    )
    
    

select avg(salary) from employees

select first_name, last_name, salary from employees
where salary > (select avg(salary) from employees)
