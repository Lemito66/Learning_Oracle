/*
1- Crear un bloque que inserte un nuevo departamento en la tabla
DEPARTMENTS. Para saber el DEPARTMENT_ID que debemos asignar al
nuevo departamento primero debemos averiguar el valor mayor que hay en la
tabla DEPARTMENTS y sumarle uno para la nueva clave.
• Location_id debe ser 1000
• Manager_id debe ser 100
• Department_name debe ser “INFORMATICA”
• NOTA: en PL/SQL debemos usar COMMIT y ROLLBACK de la misma
forma que lo hacemos en SQL. Por tanto, para validar definitivamente un
cambio debemos usar COMMIT.

*/

select * from departments where department_id = 271;

-- Como saber el ultimo valor de la columna department_id

select max(department_id) from departments;

DECLARE
    v_department_id departments.department_id%type;

BEGIN
    SELECT max(department_id) + 1 into v_department_id FROM departments;
    INSERT INTO departments (department_id, department_name, manager_id, location_id)
    VALUES (v_department_id, 'INFORMATICA', 100, 1000);
    COMMIT;
END;

/*

2- Crear un bloque PL/SQL que modifique la LOCATION_ID del nuevo
departamento a 1700. En este caso usemos el COMMIT dentro del bloque
PL/SQL.

*/

DECLARE
    v_department_id departments.department_id%type;

BEGIN
    select MAX(department_id) into v_department_id from departments;
    UPDATE departments SET location_id = 1700 WHERE department_id = v_department_id;
    COMMIT;
END;

select max(department_id) from departments;

/*
3- Por último, hacer otro bloque PL/SQL que elimine ese departamento nuevo. 
 */

DECLARE
    v_department_id departments.department_id%type;

BEGIN
    SELECT MAX(department_id) into v_department_id FROM departments;
    DELETE FROM departments WHERE department_id = v_department_id;
    COMMIT;
END;