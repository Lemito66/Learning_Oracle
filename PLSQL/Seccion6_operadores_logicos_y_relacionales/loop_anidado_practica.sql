DECLARE
    FIRST_NUMBER NUMBER:= 50;
BEGIN
    <<PARENT>>
    LOOP
        DBMS_OUTPUT.PUT_LINE('Parent loop iteration '
                             || FIRST_NUMBER);
        FIRST_NUMBER := FIRST_NUMBER - 1;
        EXIT PARENT WHEN FIRST_NUMBER = 10;
    END LOOP PARENT;
END;