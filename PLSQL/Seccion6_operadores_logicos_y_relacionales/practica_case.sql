DECLARE
    USUARIO VARCHAR2(40);
BEGIN
    USUARIO := USER; -- user es una palabra reservada que contiene el usuario de la sesion
    CASE
        WHEN USUARIO = 'TRESPIRATORIA' THEN
            DBMS_OUTPUT.PUT_LINE('Bienvenido a la base de datos de TRESPIRATORIA');
        WHEN USUARIO = 'CARDIOVASCULAR' THEN
            DBMS_OUTPUT.PUT_LINE('Bienvenido a la base de datos de CARDIOVASCULAR');
        WHEN USUARIO = 'DIGESTIVO' THEN
            DBMS_OUTPUT.PUT_LINE('Bienvenido a la base de datos de DIGESTIVO');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Usuario no autorizado');
    END CASE;
END;