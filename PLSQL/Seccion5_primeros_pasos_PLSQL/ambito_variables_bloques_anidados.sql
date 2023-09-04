DECLARE
    -- Estan son variables globale  
    X NUMBER := 0;
    Z number := 50;
BEGIN
 /* WHILE x < 10 LOOP
        DBMS_OUTPUT.PUT_LINE('x = ' || x);
        x := x + 1;
    END LOOP; */
    DBMS_OUTPUT.PUT_LINE(X);
    DECLARE
        Y NUMBER := 100; -- Estan son variables locales
    BEGIN
        DBMS_OUTPUT.PUT_LINE(Y);
        DBMS_OUTPUT.PUT_LINE(Z);
    END;

    -- Esto no puedes hacer porque y es variable local 
    -- DBMS_OUTPUT.PUT_LINE(Y);
END;