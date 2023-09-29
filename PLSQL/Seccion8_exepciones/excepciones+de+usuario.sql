DECLARE
    REG_MAX EXCEPTION;
    REGN    NUMBER;
    REGT    VARCHAR2(200);
BEGIN
    REGN:=101;
    REGT:='ASIA';
    IF REGN > 100 THEN
        RAISE REG_MAX;
    ELSE
        INSERT INTO REGIONS VALUES (
            REGN,
            REGT
        );
        COMMIT;
    END IF;
EXCEPTION
    WHEN REG_MAX THEN
        DBMS_OUTPUT.PUT_LINE('La region no puede ser mayor de 100.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error indefinido');
END;
/