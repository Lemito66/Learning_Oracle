DECLARE
    LETTER VARCHAR(1);
BEGIN
    LETTER := 'A';
    CASE LETTER
        WHEN 'A' THEN
            DBMS_OUTPUT.PUT_LINE('A');
        WHEN 'B' THEN
            DBMS_OUTPUT.PUT_LINE('B');
        WHEN 'C' THEN
            DBMS_OUTPUT.PUT_LINE('C');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Other');
    END CASE;
END;
