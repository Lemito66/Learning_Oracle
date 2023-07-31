-- Nos permite convertir tipo de datos de uno a otro

-- to_char, to_date, to_number


select '10' + 10 from dual

select months_between(sysdate, to_date('10-10-18')) from dual
