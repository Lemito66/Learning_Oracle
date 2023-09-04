/* 
Operadores m�s habituales en PLSQL_CCFLAGS

+ suma
- resta
* multiplicaci�n
/ divisi�n
** potencia
MOD resto de la divisi�n
|| concatenaci�n

 */

DECLARE
    X NUMBER:=5;
    Y NUMBER:= 2;
    A VARCHAR2(20):='Hola';
    D DATE:=SYSDATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('El resultado de la suma es:' || ' ' || to_char(x+y));
END;
