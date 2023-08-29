-- Natural join 
select * from countries
select * from regions

select * from regions natural join countries


select region_name, country_name  from regions natural join countries


select region_name, country_name  from regions natural join countries
where region_name = 'Europe'

-- Con inner join
select regions.region_name, countries.country_name from regions inner join countries on regions.region_id = countries.region_id
where region_name = 'Europe'
