-- C�mo usar pl/sql dentro de sql
-- into es para almacenar el resultado de la consulta en una variable
DECLARE
    SALARY NUMBER;
    first_name   EMPLOYEES.first_name%TYPE;
BEGIN
    SELECT -- Solo puede devolver una fila
        SALARY, first_name INTO SALARY, first_name
    FROM EMPLOYEES
    WHERE
        EMPLOYEE_ID = 100;
    DBMS_OUTPUT.PUT_LINE('Salario: '
                         || SALARY);
    DBMS_OUTPUT.PUT_LINE('Nombre: '
                            || first_name);
END;
 /* SELECT
    *
FROM
    EMPLOYEES */
