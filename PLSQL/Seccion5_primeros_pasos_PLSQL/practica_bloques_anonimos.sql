-- Poner mi nombre y apellido por pantalla

set serveroutput on

BEGIN
    DBMS_OUTPUT.PUT_LINE('Mi nombre es: '
                         || 'Emill'
                         || ' '
                         || 'Logroño');
END;