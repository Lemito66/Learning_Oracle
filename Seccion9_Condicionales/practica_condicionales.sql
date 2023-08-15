﻿-- 1. Expresiones condicionales
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

select * from cpt where cpt.cpt = '00049000'

delete from cpt where cpt_id = 9832



SELECT cpt.cpt, COUNT(*) AS cantidad_duplicados
FROM cpt
where cantidad_duplicados <>2
GROUP BY cpt.cpt
HAVING COUNT(*) > 1; 


select * from cpt where cpt.cpt = '00058555'

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






