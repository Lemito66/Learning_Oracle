CREATE OR REPLACE PROCEDURE PRC_INSERTA_T_LINEAS_INTRA (
  V_CD_FORMULARIO CHAR,
  V_CD_ATENDIMIENTO NUMBER,
  V_FECHA_REGISTRO DATE,
  V_USUARIO CHAR,
  V_CD_DOCUMENTO_CLINICO NUMBER,
  V_FECHA_INICIO DATE,
  V_TIPO VARCHAR2,
  V_LOCALIZACION VARCHAR2,
  V_CUIDADOS CLOB,
  V_FECHA_CURACION DATE,
  V_CD_REGISTRO_SECUENCIAL NUMBER
) IS
  V_SEC NUMBER;
BEGIN
 -- verifica si es insercion o actualizacion
  IF V_CD_REGISTRO_SECUENCIAL IS NULL THEN
 -- calcula el siguiente secuencial
    BEGIN
      SELECT
        NVL(MAX(CD_REGISTRO_SECUENCIAL), 0) +1 INTO V_SEC
      FROM
        T_LINEAS_INTRAVENOSAS
      WHERE
        CD_ATENDIMENTO = V_CD_ATENDIMIENTO;
    EXCEPTION
      WHEN OTHERS THEN
        V_SEC := 1;
    END;
    BEGIN
      INSERT INTO T_LINEAS_INTRAVENOSAS (
        CD_FORMULARIO,
        CD_ATENDIMENTO,
        FECHA_REGISTRO,
        USUARIO,
        CD_DOCUMENTO_CLINICO,
        FECHA_INICIO,
        TIPO,
        LOCALIZACION,
        CUIDADOS,
        FECHA_CURACION,
        CD_REGISTRO_SECUENCIAL
      ) VALUES (
        V_CD_FORMULARIO,
        V_CD_ATENDIMIENTO,
        V_FECHA_REGISTRO,
        V_USUARIO,
        V_CD_DOCUMENTO_CLINICO,
        V_FECHA_INICIO,
        V_TIPO,
        V_LOCALIZACION,
        V_CUIDADOS,
        V_FECHA_CURACION,
        V_SEC
      );
    EXCEPTION
      WHEN OTHERS THEN
        NULL;
    END;
  ELSE
    BEGIN
      UPDATE T_LINEAS_INTRAVENOSAS
      SET
        CD_FORMULARIO = V_CD_FORMULARIO,
        CD_ATENDIMENTO = V_CD_ATENDIMIENTO,
        FECHA_REGISTRO = V_FECHA_REGISTRO,
        USUARIO = V_USUARIO,
        CD_DOCUMENTO_CLINICO = V_CD_DOCUMENTO_CLINICO,
        FECHA_INICIO = V_FECHA_INICIO,
        TIPO = V_TIPO,
        LOCALIZACION = V_LOCALIZACION,
        CUIDADOS = V_CUIDADOS,
        FECHA_CURACION = V_FECHA_CURACION
      WHERE
        CD_REGISTRO_SECUENCIAL = V_CD_REGISTRO_SECUENCIAL
        AND CD_ATENDIMENTO = V_CD_ATENDIMIENTO;
    EXCEPTION
      WHEN OTHERS THEN
        NULL;
    END;
  END IF;
  COMMIT;
END PRC_INSERTA_T_LINEAS_INTRA;