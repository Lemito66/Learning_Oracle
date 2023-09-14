CREATE OR REPLACE PROCEDURE ACTUALIZAR_VALOR_GAC(
  V_GAC_ID IN NUMBER,
  V_CANTIDAD IN NUMBER,
  V_DESCRIPCION IN VARCHAR2,
  PC_ERROR OUT VARCHAR2
) IS
BEGIN
  UPDATE GAC
  SET
    CANTIDAD = V_CANTIDAD,
    DESCRIPCION = V_DESCRIPCION,
    FECHA = TRUNC(
      SYSDATE
    ),
    HORA = SYSDATE
  WHERE
    GAC_ID = V_GAC_ID;
  IF SQL%NOTFOUND THEN
    PC_ERROR := 'No se encontro el registro';
  ELSE
    PC_ERROR := 'OK';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
 -- Capturar el error de oracle
    PC_ERROR := 'Error al actualizar el valor: '
                                                || SQLERRM;
    DBMS_OUTPUT.PUT_LINE('Error al actualizar el valor: '
                         || SQLERRM );
END ACTUALIZAR_VALOR_GAC;
/
