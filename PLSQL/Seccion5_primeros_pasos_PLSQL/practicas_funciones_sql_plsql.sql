/*

Crea un bloque PL/SQL con tres variables VARCHAR2:
o Nombre
o apellido1
o apellido2

� Debes visualizar las iniciales separadas por puntos.
� Adem�s siempre en may�scula
� Por ejemplo alberto p�rez Garc�a deber�a aparecer--> A.P.G

 */

DECLARE
    NOMBRE    VARCHAR2(20);
    APELLIDO1 VARCHAR2(20);
    APELLIDO2 VARCHAR2(20);
BEGIN
    NOMBRE:= 'Emill';
    APELLIDO1:= 'Logro�o';
    APELLIDO2:= 'Trujillo';
    DBMS_OUTPUT.PUT_LINE(UPPER( SUBSTR(NOMBRE, 1, 1))
                         ||'.'|| UPPER(SUBSTR(APELLIDO1, 1, 1))
                            || '.'|| UPPER( SUBSTR(APELLIDO2, 1, 1)));
END;


/*
Averiguar el nombre del d�a que naciste, por ejemplo "Martes"
� PISTA (Funci�n TO_CHAR) 
 */

DECLARE
    FECHA_NACIMIENTO DATE;
BEGIN
    FECHA_NACIMIENTO := '15/04/1998';

    DBMS_OUTPUT.PUT_LINE(TO_CHAR(FECHA_NACIMIENTO, 'DAY'));

END;
