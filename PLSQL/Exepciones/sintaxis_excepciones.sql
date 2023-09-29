-- Sintaxis de excepciones
DECLARE
    EMPL EMPLOYEES%ROWTYPE;
BEGIN
    SELECT
        * INTO EMPL
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID = 100;
    DBMS_OUTPUT.PUT_LINE('El empleado es: '
                         || EMPL.FIRST_NAME
                         || ' '
                         || EMPL.LAST_NAME);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el empleado');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Existe mas de un empleado');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error desconocido');
END;