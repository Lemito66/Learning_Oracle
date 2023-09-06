DECLARE
    FIRST_NUMBER  NUMBER := 0;
    SECOND_NUMBER NUMBER:=0;
    THIRD_NUMBER  NUMBER;
BEGIN
    <<PARENT>>
    LOOP
        SECOND_NUMBER := SECOND_NUMBER + 1;
        THIRD_NUMBER := 100;
        DBMS_OUTPUT.PUT_LINE('Parent: '
                             || SECOND_NUMBER);
        <<CHILD>>
        LOOP
            EXIT PARENT WHEN SECOND_NUMBER >3;
            DBMS_OUTPUT.PUT_LINE('Child: '
                                 || THIRD_NUMBER);
            THIRD_NUMBER := THIRD_NUMBER + 1;
            EXIT CHILD WHEN THIRD_NUMBER > 103;
        END LOOP CHILD;
    END LOOP PARENT;
END;