DECLARE
    EMPL EMPLOYEES%ROWTYPE;
BEGIN
    SELECT
        * INTO EMPL
    FROM
        EMPLOYEES;
    DBMS_OUTPUT.PUT_LINE(EMPL.FIRST_NAME);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLCODE);
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;