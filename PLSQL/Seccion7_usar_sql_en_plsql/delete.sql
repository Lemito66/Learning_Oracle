DECLARE
    id test.test_ID%TYPE;

BEGIN
    id := 1;

    delete test where test_ID = id;
    commit;
END;

select * from test