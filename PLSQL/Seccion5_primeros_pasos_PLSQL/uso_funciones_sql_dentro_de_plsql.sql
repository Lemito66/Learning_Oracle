DECLARE
    V_SQL     VARCHAR2(2000);
    V_COUNT   NUMBER;
    NAME      VARCHAR2(100);
    LAST_NAME VARCHAR2(100);
BEGIN
    v_sql := 'Lemito66';
    DBMS_OUTPUT.PUT_LINE(SUBSTR(V_SQL, 1, 3));

    V_SQL := 'SELECT COUNT(*) FROM EMPLOYEES';
    EXECUTE IMMEDIATE V_SQL INTO V_COUNT;
    DBMS_OUTPUT.PUT_LINE(V_COUNT);

    V_SQL := 'SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE EMPLOYEE_ID = 100';
    EXECUTE IMMEDIATE V_SQL INTO NAME, LAST_NAME;
    DBMS_OUTPUT.PUT_LINE(NAME || ' ' || LAST_NAME);
END;