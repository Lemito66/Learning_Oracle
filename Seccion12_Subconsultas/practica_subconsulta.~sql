--Mostrar los compa�eros que trabajan en el mismo departamento que John Chen
select
    department_id
from
    employees
where
    first_name = 'John'
    and last_name = 'Chen'
select
    employees.first_name,
    employees.last_name
from
    employees
where
    employees.department_id = (
        select
            department_id
        from
            employees
        where
            first_name = 'John'
            and last_name = 'Chen'
    )
    -- � �Qu� departamentos tienen su sede en Toronto?
select
    locations.location_id
from
    locations
where
    city = 'Toronto'
select
    departments.department_name
from
    departments
where
    departments.location_id = (
        select
            locations.location_id
        from
            locations
        where
            city = 'Toronto'
    )
    -- Visualizar los empleados que tengan m�s de 5 empleados a su cargo. 
select
    manager_id
from
    employees
group by
    manager_id
having
    count(*) > 5
select
    *
from
    employees
where
    employees.employee_id in (
        select
            manager_id
        from
            employees
        group by
            manager_id
        having
            count(*) > 5
    )
-- �En qu� ciudad trabajar Guy Himuro?
select
    *
from
    locations
    
    
select
    *
from
    departments
where
    department_id = 30
    
    
select
    department_id
from
    employees
where
    first_name = 'Guy'
    
    
select
    location_id
from
    departments
where
    departments.department_id = (
        select
            department_id
        from
            employees
        where
            first_name = 'Guy'
    )
select
    locations.city
from
    locations
where
    locations.location_id = (
        select
            location_id
        from
            departments
        where
            departments.department_id = (
                select
                    department_id
                from
                    employees
                where
                    first_name = 'Guy'
            )
    )
    
-- ¿Qué empleados tienen el salario mínimo?

select min(salary) from employees

select last_name, job_id, salary from employees where salary = (select min(salary) from employees)

-- Mostrar los detalles de los departamentos en los cuales el salario máximo sea mayor a 10000.

select salary from employees where salary > 10000


select * from employees where salary in (select salary from employees where salary > 10000)

-- Indicar los tipos de trabajo de los empleados que entraron en la empresa entre 2002 y 2003
select * from employees

select * from jobs where jobs.job_id in (SELECT job_id
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) BETWEEN 2002 AND 2003)


SELECT job_id
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) BETWEEN 2002 AND 2003


