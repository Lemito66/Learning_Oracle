declare 

    data test.test_ID%TYPE;

BEGIN
    data := 1;

    UPDATE test set DESCRIPCION = 'test modificado' where test_ID = DATA;
    commit;
END;


select * from test