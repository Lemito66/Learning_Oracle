-- Months_between(d1,d2)

select trunc(months_between(sysdate, hire_date), 0) from employees

-- add_months (d1, n) añade la suma de los meses

select sysdate, add_months(sysdate,3) from dual

-- Next_day(fecha, string) El string tiene un dia de la semana 

-- Que fecha es el proximo miercoles


select next_day(sysdate, 'WEDNESDAY') from dual

NEXT_DAY('01-Aug-03', 'TUESDAY')

SELECT NEXT_DAY('15-OCT-2009','TUESDAY') as "NEXT DAY" FROM DUAL;

SELECT NEXT_DAY(TO_DATE('15-JUL-1987', 'DD-MON-YYYY'), 'WED') FROM DUAL;


SELECT 
    CASE 
        WHEN TO_CHAR(TO_DATE('15-JUL-1987', 'DD-MON-YYYY'), 'DY', 'NLS_DATE_LANGUAGE=AMERICAN') = 'SUN' THEN TO_DATE('17-JUL-1987', 'DD-MON-YYYY') -- Si es domingo, el próximo miércoles es en 2 días (17-JUL-1987)
        WHEN TO_CHAR(TO_DATE('15-JUL-1987', 'DD-MON-YYYY'), 'DY', 'NLS_DATE_LANGUAGE=AMERICAN') = 'MON' THEN TO_DATE('16-JUL-1987', 'DD-MON-YYYY') -- Si es lunes, el próximo miércoles es en 1 día (16-JUL-1987)
        ELSE NEXT_DAY(TO_DATE('15-JUL-1987', 'DD-MON-YYYY'), 'WED') -- Para el resto de los días, simplemente usamos la función NEXT_DAY
    END AS NextWednesday
FROM DUAL;
