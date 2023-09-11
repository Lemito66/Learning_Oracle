DECLARE
    P VARCHAR2(30);
    N PLS_INTEGER :=5;
BEGIN
    FOR J IN 2..ROUND(SQRT(N)) LOOP
        IF N MOD J = 0 THEN
            P := ' no es un n�mero primo';
            GOTO PRINT_NOW;
        END IF;
    END LOOP;
    P := ' Es un n�mero primo';
    <<PRINT_NOW>>
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(N)
                         || P);
END;