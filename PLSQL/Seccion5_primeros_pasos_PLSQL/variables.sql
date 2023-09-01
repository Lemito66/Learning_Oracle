-- Las variables se declaran e inicializan en la sección declare del bloque PL/SQL

-- Las variables se declaran con el tipo de dato y el tamaño

DECLARE
    salary number(2);
    name varchar(100);
    birthdate date;

    -- Asignar un valor es con :=

    salary := 1000;
    name := 'Juan';
    birthdate := '01/01/1990';