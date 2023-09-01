-- Crear dos variables de tipo numérico y visualizar su suma

DECLARE
    v_num1 NUMBER;
    v_num2 NUMBER;
BEGIN
    v_num1 := 10;
    v_num2 := 20;
    DBMS_OUTPUT.PUT_LINE('La suma de ' || v_num1 || ' + ' || v_num2 || ' es: ' || (v_num1 + v_num2));
END;