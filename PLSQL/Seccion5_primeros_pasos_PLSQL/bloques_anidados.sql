-- Los bloques son totalmente independientes pero se pueden heredar

BEGIN
    DBMS_OUTPUT.PUT_LINE('Primer Bloque');
    DECLARE
        FIRST_NUMBER NUMBER :=10;
    BEGIN
        DBMS_OUTPUT.PUT_LINE(FIRST_NUMBER);
    END;
END;
