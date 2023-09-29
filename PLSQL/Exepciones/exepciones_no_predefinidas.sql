DECLARE
    MY_EXCEP EXCEPTION;
    PRAGMA EXEPTION_INIT(MY_EXCEP, -937);
    V1       NUMBER;
    V2       NUMBER;
BEGIN
    SELECT
        EMPLOYEE_ID,
        SUM(SALARY) INTO V1,
        V2
    FROM
        EMPLOYEES;
    DBMS_OUTPUT.PUT_LINE(V1
                         || ' '
                         || V2);
EXCEPTION
    WHEN MY_EXCEP THEN
        DBMS_OUTPUT.PUT_LINE('Error: '
                             || SQLERRM);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: '
                             || SQLERRM);
END;