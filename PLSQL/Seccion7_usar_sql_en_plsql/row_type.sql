DECLARE
    SALARY     NUMBER;
    FIRST_NAME EMPLOYEES.FIRST_NAME%TYPE;
    EMPLOYEE   EMPLOYEES%ROWTYPE; -- Traemos todos los campos de la tabla
BEGIN
    SELECT -- Solo puede devolver una fila
        * INTO EMPLOYEE
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID = 100;
    DBMS_OUTPUT.PUT_LINE('Employee: '
                         || EMPLOYEE.FIRST_NAME
                         || ' '
                         || EMPLOYEE.LAST_NAME); -- Accedemos al valor con el nombre de la variable y el nombre de la columna
END;