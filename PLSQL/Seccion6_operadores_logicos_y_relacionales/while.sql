-- While, se ejecuta siempre y cuando la condicion sea verdadera
DECLARE
    CONDITION BOOLEAN := TRUE;
BEGIN
    WHILE CONDITION LOOP -- Podemos usar negacion NOT
        DBMS_OUTPUT.PUT_LINE('Hola');
        CONDITION := FALSE;
        -- Tambien podemos usar exit when 
    END LOOP;
END;