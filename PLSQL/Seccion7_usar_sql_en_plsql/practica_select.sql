/* Crear un bloque PL/SQL que devuelva al salario máximo del
departamento 100 y lo deje en una variable denominada salario_maximo
y la visualice */

DECLARE MAX_SALARY EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT
    MAX(SALARY) INTO MAX_SALARY
FROM
    EMPLOYEES;
DBMS_OUTPUT.PUT_LINE('Max salary is '
                     || MAX_SALARY);
END;
 /* Visualizar el tipo de trabajo del empleado número 100 */
 DECLARE TYPE_OF_WORK EMPLOYEES%ROWTYPE;
BEGIN
SELECT
    * INTO TYPE_OF_WORK
FROM
    EMPLOYEES
WHERE
    EMPLOYEE_ID = 100;
DBMS_OUTPUT.PUT_LINE('Employee name is '
                     || TYPE_OF_WORK.FIRST_NAME
                     || ' '
                     || TYPE_OF_WORK.LAST_NAME
                     || ' and his job is '
                     || TYPE_OF_WORK.JOB_ID);
END;
/* 
    Crear una variable de tipo DEPARTMENT_ID y ponerla algún valor, por
ejemplo 10.
• Visualizar el nombre de ese departamento y el número de empleados
que tiene, poniendo. Crear dos variables para albergar los valores.

 */
DECLARE
    department_id_employee number := 10;
    name_of_department varchar2(30);
    number_of_employees number;
BEGIN
    select department_name into name_of_department from departments where department_id = department_id_employee;
    dbms_output.put_line('The name of the department is ' || name_of_department);

    -- Cuanto empleados pertenecen al departamento 10
    select count(*) into number_of_employees from employees where department_id = department_id_employee;

    dbms_output.put_line('The number of employees in the department ' || name_of_department || ' is ' || number_of_employees);

END;

declare 
    max_salary employees.salary%type;
    min_salary employees.salary%type;
    difference number;

begin
    select max(salary) into max_salary from employees;
    select min(salary) into min_salary from employees;
    dbms_output.put_line('The max salary is ' || max_salary);
    dbms_output.put_line('The min salary is ' || min_salary);
    difference := max_salary - min_salary;
    dbms_output.put_line('The difference between max and min salary is ' || difference);
end;