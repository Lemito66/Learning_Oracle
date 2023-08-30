set serveroutput on;
BEGIN

dbms_output.put_line('Hello World!')
DELETE FROM COUNTRIES
WHERE
    COUNTRY_ID = 'CHAR(2)';
;

END;
