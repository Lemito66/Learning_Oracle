-- While, se ejecuta siempre y cuando la condicion sea verdadera
DECLARE
    CONDITION BOOLEAN := TRUE;
BEGIN
    WHILE CONDITION LOOP
        DBMS_OUTPUT.PUT_LINE('Hola');
        CONDITION := FALSE;
    END LOOP;
END;