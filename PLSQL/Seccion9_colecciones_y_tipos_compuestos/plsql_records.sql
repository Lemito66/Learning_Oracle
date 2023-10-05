DECLARE
    TYPE EMPLEADO IS
        RECORD ( NOMBRE VARCHAR2(100), SALARIO NUMBER, FECHA EMPLOYEES.HIRE_DATE%TYPE, DATOS EMPLOYEES%ROWTYPE );
    EMPLE1 EMPLEADO;
BEGIN
    SELECT
        * INTO EMPLE1.DATOS
    FROM
        EMPLOYEES
    WHERE
        EMPLOYEE_ID = 100;
    EMPLE1.NOMBRE := EMPLE1.DATOS.FIRST_NAME
                                  || ' '
                                  || EMPLE1.DATOS.LAST_NAME;
    EMPLE1.SALARIO := EMPLE1.DATOS.SALARY;
    EMPLE1.FECHA := EMPLE1.DATOS.HIRE_DATE;
    DBMS_OUTPUT.PUT_LINE('Nombre: '
                         || EMPLE1.NOMBRE);
    DBMS_OUTPUT.PUT_LINE('Salario: '
                         || EMPLE1.SALARIO);
    DBMS_OUTPUT.PUT_LINE('Fecha de contratacion: '
                         || EMPLE1.FECHA);
    DBMS_OUTPUT.PUT_LINE('Datos completos: '
                         || EMPLE1.DATOS.FIRST_NAME);
END;

select * from regions