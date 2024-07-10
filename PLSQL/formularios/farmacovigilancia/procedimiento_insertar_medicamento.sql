CREATE OR REPLACE PROCEDURE PRC_INSERTA_INF_MEDICAMENTO (
    V_CD_ATENDIMENTO NUMBER,
    V_CD_SECUENCIAL NUMBER,
    V_FECHA_REGISTRO DATE,
    V_USUARIO NVARCHAR2,
    V_NOMBRE_GENERICO NVARCHAR2,
    V_NOMBRE_COMERCIAL NVARCHAR2,
    V_LOTE NVARCHAR2,
    V_FECHA_INICIO NVARCHAR2,
    V_FECHA_FIN NVARCHAR2,
    V_DOSIS_DIARIA NVARCHAR2,
    V_VIA_ADMINISTRACION NVARCHAR2,
    V_INDICACION NVARCHAR2,
    V_CD_REGISTRO_SECUENCIAL NUMBER,
    V_CD_FORMULARIO CHAR
) IS
    V_SEC NUMBER;
BEGIN
 -- verifica si es insercion o actualizacion
    IF V_CD_REGISTRO_SECUENCIAL IS NULL THEN
 -- calcula el siguiente secuencial
        BEGIN
            SELECT
                NVL(MAX(CD_REGISTRO_SECUENCIAL), 0) + 1 INTO V_SEC
            FROM
                T_INFORMACION_MEDICAMENTO
            WHERE
                CD_ATENDIMENTO = V_CD_ATENDIMENTO
                AND CD_SECUENCIAL = V_CD_SECUENCIAL;
        EXCEPTION
            WHEN OTHERS THEN
                V_SEC := 1;
        END;

        BEGIN
            INSERT INTO T_INFORMACION_MEDICAMENTO (
                CD_ATENDIMENTO,
                CD_SECUENCIAL,
                FECHA_REGISTRO,
                USUARIO,
                NOMBRE_GENERICO,
                NOMBRE_COMERCIAL,
                LOTE,
                FECHA_INICIO,
                FECHA_FIN,
                DOSIS_DIARIA,
                VIA_ADMINISTRACION,
                INDICACION,
                CD_REGISTRO_SECUENCIAL,
                CD_FORMULARIO
            ) VALUES (
                V_CD_ATENDIMENTO,
                V_CD_SECUENCIAL,
                V_FECHA_REGISTRO,
                V_USUARIO,
                V_NOMBRE_GENERICO,
                V_NOMBRE_COMERCIAL,
                V_LOTE,
                V_FECHA_INICIO,
                V_FECHA_FIN,
                V_DOSIS_DIARIA,
                V_VIA_ADMINISTRACION,
                V_INDICACION,
                V_SEC,
                V_CD_FORMULARIO
            );
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;
    ELSE
        BEGIN
            DBMS_OUTPUT.PUT_LINE('UPDATE T_INFORMACION_MEDICAMENTO');
            UPDATE T_INFORMACION_MEDICAMENTO
            SET
                NOMBRE_GENERICO = V_NOMBRE_GENERICO,
                NOMBRE_COMERCIAL = V_NOMBRE_COMERCIAL,
                LOTE = V_LOTE,
                FECHA_INICIO = V_FECHA_INICIO,
                FECHA_FIN = V_FECHA_FIN,
                DOSIS_DIARIA = V_DOSIS_DIARIA,
                VIA_ADMINISTRACION = V_VIA_ADMINISTRACION,
                INDICACION = V_INDICACION
            WHERE
                CD_REGISTRO_SECUENCIAL = V_CD_REGISTRO_SECUENCIAL
                AND CD_ATENDIMENTO = V_CD_ATENDIMENTO
                AND CD_SECUENCIAL = V_CD_SECUENCIAL;
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;
    END IF;

    COMMIT;
END PRC_INSERTA_INF_MEDICAMENTO;