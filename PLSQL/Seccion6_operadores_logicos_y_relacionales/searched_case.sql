DECLARE
    salary NUMBER;
BEGIN
    salary := 10000;
    CASE
        WHEN salary >= 10000 THEN
            DBMS_OUTPUT.PUT_LINE('High Salary');
        WHEN salary >= 5000 THEN
            DBMS_OUTPUT.PUT_LINE('Medium Salary');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Low Salary');
    END CASE;
END;
