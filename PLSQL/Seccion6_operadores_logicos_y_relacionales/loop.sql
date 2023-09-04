-- Es un bucle

DECLARE
    X NUMBER:=1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(X);
        X:=X+1;
    /* if x = 11 then
        exit; -- Nos permite salir del bucle
    end if; */
    EXIT WHEN X=11; -- Nos permite salir del bucle
    END LOOP;
END;