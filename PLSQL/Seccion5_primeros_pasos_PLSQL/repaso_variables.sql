declare
    name varchar2(100);
    last_name VARCHAR2(100);
BEGIN
    NAME := 'Emill';
    last_name := 'Logroño';
    DBMS_OUTPUT.PUT_LINE('Tu nombre es' || name || ' ' || last_name);
END;


select job_id, count(*) from employees group by job_id
