CREATE OR REPLACE PROCEDURE LEER_VALOR_GAC(
    V_GAC_ID NUMBER
) IS
    V_RECORD GAC%ROWTYPE;
BEGIN
    SELECT
        * INTO V_RECORD
    FROM
        GAC
    WHERE
        GAC_ID = V_GAC_ID;
    DBMS_OUTPUT.PUT_LINE('GAC_ID: '
                         || V_RECORD.GAC_ID);
    DBMS_OUTPUT.PUT_LINE('CANTIDAD: '
                         || V_RECORD.CANTIDAD);
    DBMS_OUTPUT.PUT_LINE('DESCRIPCION: '
                         || V_RECORD.DESCRIPCION);
    DBMS_OUTPUT.PUT_LINE('FECHA: '
                         || V_RECORD.FECHA);
    DBMS_OUTPUT.PUT_LINE('Hora: '
                         || TO_CHAR(V_RECORD.HORA, 'HH24:MI:SS'));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el registro');
    WHEN OTHERS THEN
        NULL;
END LEER_VALOR_GAC;
/
