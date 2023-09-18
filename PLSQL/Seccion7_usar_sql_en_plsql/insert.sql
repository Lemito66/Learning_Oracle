DECLARE
    DESCRIPTION VARCHAR2(1000);
BEGIN
    DESCRIPTION := 'This is a test';
    INSERT INTO TEST (
        DESCRIPCION
    ) VALUES (
        DESCRIPTION
    );
    COMMIT;
END;

select * from test