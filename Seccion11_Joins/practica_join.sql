--Visualizar el nombre del pa�s y el nombre de la regi�n. (tablas COUNTRIES
--y REGIONS). Usar un natural join
select
    country_name,
    region_name
from
    countries
    natural join regions
select
    *
from
    countries
    natural join regions
--Usando el ejemplo anterior visualizar tambi�n el nombre de la ciudad
--a�adiendo una nueva tabla (LOCATIONS)
Select COUNTRIES.COUNTRY_NAME, REGION_NAME,city From REGIONS natural
Join COUNTRIES natural join locations


    
-- Indicar el nombre del departamento y la media de sus salarios

select * from employees
select * from departments

select departments.department_name, ROUND(AVG(SALARY),2)
from employees 
inner join departments on (employees.department_id = departments.department_id)
group by  departments.department_name

--• Mostrar el nombre del departamento, el del manager a cargo y la ciudad a la
--que pertenece. Debemos usar la cláusula ON y/o la cláusula USING para
--realizar la operación 

select * from employees
select * from departments
select * from locations

select departments.department_name, employees.first_name, locations.city from departments
inner join employees on departments.department_id = employees.department_id
inner join locations on departments.location_id = locations.location_id



SELECT DEPARTMENT_NAME, FIRST_NAME, CITY
FROM DEPARTMENTS DEPT JOIN EMPLOYEES EMPLE
ON (DEPT.MANAGER_ID=EMPLE.EMPLOYEE_ID) JOIN LOCATIONS LOC USING
(LOCATION_ID);


--Mostrar job_title, el department_name, el last_name de empleado y
--hire_date de todos los empleados que entraron entre el 2000 y el 2004.
--Usar cláusulas using

select * from employees
select * from departments
select * from locations
select * from jobs

select job_title, department_name, last_name, hire_date from employees join jobs on (employees.job_id = jobs.job_id)
join departments using (department_id)
where to_char(hire_date, 'yyyy')  between 2000 and 2004

-- Mostrar el job_title y la media de los salarios de cada uno, siempre que la
-- media supere los 7000

select job_title, avg(employees.salary), count(*)  from employees join jobs on (employees.job_id = jobs.job_id)
group by job_title, employees.salary
having avg(employees.salary) > 7000
order by salary asc
