-- 1. Expresiones condicionales
/* � Visualizar los siguientes datos con CASE.
o Si el departamento es 50 ponemos Transporte
o Si el departamento es 90 ponemos Direcci�n
o Cualquier otro n�mero ponemos �Otro departamento� */
select department_id, first_name, 
case 
    when department_id = 50 then 'Transporte'
    when department_id = 90 then 'Direccion'
    else 'Otro departamento'
end as "Departamento"
from employees



/* � Mostrar de la tabla LOCATIONS, la ciudad y el pa�s. Ponemos los
siguientes datos dependiendo de COUNTRY_ID.
o Si es US y CA ponemos Am�rica del Norte
o Si es CH, UK, DE,IT ponemos Europa
o Si es BR ponemos Am�rica del Sur
o Si no es ninguno ponemos �Otra zona� */

select country_id,
case 
  when country_id in('US','CA') then 'America del norte'
  when country_id in ('CH','UK','DE','IT') then 'Europa'
  when country_id = 'BR' then 'America del Sur'
  else 'Otra Zona'
    
end Zonas
 from locations


--� Realizar el primer ejercicio con DECODE en vez de con CASE
select department_id, first_name,
decode(department_id, 50, 'Transporte', 90, 'Direccion', 'Otro departamento') as "Departamento"
from employees

select * from cpt

SELECT cpt.cpt, COUNT(*) AS cantidad_duplicados
FROM cpt
GROUP BY cpt.cpt
HAVING COUNT(*) > 1;

select * from cpt where cpt.cpt = '00027705'
select * from cpt where cpt.cpt = '-'




select * from cpt where cpt.cpt = '-'
select * from cpt where cpt.cpt = '00058555'



-- Me indica que hay 2 registros con el mismo cpt
SELECT cpt.cpt, COUNT(*) AS cantidad_duplicados
FROM cpt
GROUP BY cpt.cpt
HAVING COUNT(*) > 1;

select * from cpt where cpt.cpt = '00061711'


select tabla.*, tabla.rowid from cpt tabla 

update cpt 
set cpt.description_cpt = 'ANASTOMOSIS, ARTERIAL, INTRACRANEAL-EXTRACRANEAL, POR EJEMPLO CEREBRAL MEDIA/CORTICAL' where cpt_id = 12240

delete from cpt where cpt_id = 12241



SELECT cpt.cpt, COUNT(*) AS cantidad_duplicados
FROM cpt
where cantidad_duplicados <>2
GROUP BY cpt.cpt
HAVING COUNT(*) > 1; 


select * from cpt where cpt.cpt = '00064702'

SELECT cpt.cpt, cpt.short_name, COUNT(*) AS cantidad_duplicados
FROM cpt
WHERE cpt.short_name = '-' AND cpt.cpt IN (
    SELECT cpt.cpt
    FROM cpt
    GROUP BY cpt.cpt
    HAVING COUNT(*) > 1
)
GROUP BY cpt.cpt, cpt.short_name;




DELETE FROM cpt
WHERE (cpt.cpt, cpt.short_name) IN (
    SELECT cpt.cpt, cpt.short_name
    FROM cpt
    WHERE cpt.short_name = '-' AND cpt.cpt IN (
        SELECT cpt.cpt
        FROM cpt
        GROUP BY cpt.cpt
        HAVING COUNT(*) > 1
    )
);

select * from cpt


update cpt 
set cpt.short_name = upper(cpt.short_name)

update cpt 
set cpt.description_cpt = upper(cpt.description_cpt)

UPDATE cpt
SET cpt.description_cpt = REPLACE(cpt.description_cpt, 'Á', 'A');

select * from cpt where description_cpt like '%Á%' OR description_cpt like '%É%'
 OR description_cpt like '%Í%' OR description_cpt like '%Ó%' OR description_cpt like '%Ú%'

UPDATE cpt
SET short_name = RTRIM(short_name);



delete from formularioterapiarespiratoria where id = 397




