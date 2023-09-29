/* 1- Crear una SELECT (no un cursor explícito) que devuelva el nombre de un
empleado pasándole el EMPLOYEE_ID en el WHERE,
• Comprobar en primer lugar que funciona pasando un empleado
existente
• Pasar un empleado inexistente y comprobar que genera un error
• Crear una zona de EXCEPTION controlando el NO_DATA_FOUND
para que pinte un mensaje como “Empleado inexistente” */

DECLARE EMPL_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
EMPL_NAME EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    EMPL_ID := 100;
 -- Utiliza un SELECT INTO para obtener el nombre del empleado
    SELECT
        FIRST_NAME INTO EMPL_NAME
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID = EMPL_ID;
 -- Si llegamos aquí, significa que se encontró el empleado
    DBMS_OUTPUT.PUT_LINE('El empleado es: '
                                                                                     || EMPL_NAME);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
 -- Controla la excepción NO_DATA_FOUND si no se encuentra al empleado
        DBMS_OUTPUT.PUT_LINE('Empleado inexistente');
    WHEN OTHERS THEN
 -- Controla otras excepciones si ocurren
        DBMS_OUTPUT.PUT_LINE('Error: '
                                                                       || SQLCODE
                                                                       || ' '
                                                                       || SQLERRM);
END;
 /*
Modificar la SELECT para que devuelva más de un empleado, por ejemplo
poniendo EMPLOYEE_ID> 100. Debe generar un error. Controlar la
excepción para que genere un mensaje como “Demasiados empleados
en la consulta” 
*/
 DECLARE EMPL_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
EMPL_NAME EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    EMPL_ID := 100;
 -- Utiliza un SELECT INTO para obtener el nombre del empleado
    SELECT
        FIRST_NAME INTO EMPL_NAME
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID > EMPL_ID;
 -- Si llegamos aquí, significa que se encontró el empleado
    DBMS_OUTPUT.PUT_LINE('El empleado es: '
                                                                                     || EMPL_NAME);
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
 -- Controla la excepción NO_DATA_FOUND si no se encuentra al empleado
        DBMS_OUTPUT.PUT_LINE('Demasiados empleados en la consulta');
    WHEN NO_DATA_FOUND THEN
 -- Controla la excepción NO_DATA_FOUND si no se encuentra al empleado
        DBMS_OUTPUT.PUT_LINE('Empleado inexistente');
    WHEN OTHERS THEN
 -- Controla otras excepciones si ocurren
        DBMS_OUTPUT.PUT_LINE('Error: '
                                                                       || SQLCODE
                                                                       || ' '
                                                                       || SQLERRM);
END;
 /*
3- Modificar la consulta para que devuelva un error de división por CERO,
por ejemplo, vamos a devolver el salario en vez del nombre y lo dividimos
por 0. En este caso, en vez de controlar la excepción directamente,
creamos una sección WHEN OTHERS y pintamos el error con SQLCODE
y SQLERR
 
 */
 DECLARE EMPL_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
EMPL_SALARY EMPLOYEES.SALARY%TYPE;
BEGIN
    EMPL_ID := 100;
 -- Utiliza un SELECT INTO para obtener el nombre del empleado
    SELECT
        SALARY / 0 INTO EMPL_SALARY
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID = EMPL_ID;
 -- Si llegamos aquí, significa que se encontró el empleado
    DBMS_OUTPUT.PUT_LINE(SQLCODE || ' ' || SQLERRM);
    DBMS_OUTPUT.PUT_LINE('El salario es: '
                                                                                     || EMPL_SALARY);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error de division por cero');
    WHEN TOO_MANY_ROWS THEN
 -- Controla la excepción NO_DATA_FOUND si no se encuentra al empleado
        DBMS_OUTPUT.PUT_LINE('Demasiados empleados en la consulta');
    WHEN NO_DATA_FOUND THEN
 -- Controla la excepción NO_DATA_FOUND si no se encuentra al empleado
        DBMS_OUTPUT.PUT_LINE('Empleado inexistente');
    WHEN OTHERS THEN
 -- Controla otras excepciones si ocurren
        DBMS_OUTPUT.PUT_LINE('Error: '
                                                                       || SQLCODE
                                                                       || ' '
                                                                       || SQLERRM);
END;
SELECT
    FIRST_NAME
FROM
    EMPLOYEES
WHERE
    EMPLOYEE_ID > 100;