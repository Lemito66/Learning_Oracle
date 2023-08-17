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
select
    country_name,
    region_name,
    city
from
    countries
    join regions on (countries.region_id = regions.region_id)
    join countries on locations (countries.country_id = locations.country_id)
select
    *
from
    countries
select
    *
from
    regions
select
    *
from
    LOCATIONS
