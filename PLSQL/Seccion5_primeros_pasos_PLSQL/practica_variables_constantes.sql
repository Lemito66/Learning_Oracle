/*
• Queremos calcular el impuesto de un producto
o El impuesto será del 21%. Le debemos poner en una constante
o Creamos una variable de tipo number (5,2) para poner el precio del
producto
o Creamos otra variable para el resultado. Le decimos que es del
mismo tipo (type) que la anterior
o Hacemos el cálculo y visualizamos el resultado. 
*/

DECLARE
    IMPUESTO CONSTANT  NUMBER(5,2) := 0.21;
    precio NUMBER(5,2);
    resultado precio%TYPE;
BEGIN
    precio := 100;
    resultado := precio * IMPUESTO;
    DBMS_OUTPUT.PUT_LINE('El impuesto es: ' || resultado);
END;