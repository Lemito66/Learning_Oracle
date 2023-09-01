DECLARE
    NAME CONSTANT VARCHAR2(30) := 'John';
    AGE NUMBER NOT NULL := 20;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello '
                         || NAME);
    AGE := 30;
    DBMS_OUTPUT.PUT_LINE('Your age is '
                            || AGE);
END;
