CREATE OR REPLACE FUNCTION FUN_CONTROL_MEDICAMENTO(
    VATENDIMENTO NUMBER,
    VFORMULARIO NUMBER
) RETURN CLOB IS
    CURSOR DATOS IS
        SELECT
            RPAD(MEDICAMENTO.CD_REGISTRO_SECUENCIAL, 5)                     AS "ID",
            RPAD(MEDICAMENTO.NOMBRE_GENERICO, 30)                          AS "Nombre Genérico",
            RPAD(MEDICAMENTO.NOMBRE_COMERCIAL, 30)                         AS "Nombre Comercial",
            RPAD(MEDICAMENTO.LOTE, 20)                                     AS "Lote",
            RPAD(MEDICAMENTO.FECHA_INICIO, 18) AS "Fecha Inicio",
            RPAD(MEDICAMENTO.FECHA_FIN, 18)    AS "Fecha Fin",
            RPAD(MEDICAMENTO.DOSIS_DIARIA, 10)                             AS "Dosis Diaria",
            RPAD(MEDICAMENTO.VIA_ADMINISTRACION, 20)                       AS "Via Administración",
            RPAD(MEDICAMENTO.INDICACION, 50)                               AS "Indicación"
        FROM
            EDITOR_CUSTOM.T_INFORMACION_MEDICAMENTO MEDICAMENTO
        WHERE
            MEDICAMENTO.CD_ATENDIMENTO = VATENDIMENTO
            AND MEDICAMENTO.CD_SECUENCIAL = VFORMULARIO
        ORDER BY
            MEDICAMENTO.CD_REGISTRO_SECUENCIAL;
    VRESULTADO CLOB;
BEGIN
    -- Create a temporary CLOB
    DBMS_LOB.CREATETEMPORARY(VRESULTADO, TRUE);

    FOR COLUMN IN DATOS LOOP
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."ID"), COLUMN."ID");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Nombre Genérico"), COLUMN."Nombre Genérico");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Nombre Comercial"), COLUMN."Nombre Comercial");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Lote"), COLUMN."Lote");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Fecha Inicio"), COLUMN."Fecha Inicio");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Fecha Fin"), COLUMN."Fecha Fin");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Dosis Diaria"), COLUMN."Dosis Diaria");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Via Administración"), COLUMN."Via Administración");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, LENGTH(COLUMN."Indicación"), COLUMN."Indicación");
        DBMS_LOB.WRITEAPPEND(VRESULTADO, 1, CHR(10));
    END LOOP;

    RETURN VRESULTADO;

EXCEPTION
    WHEN OTHERS THEN
        return empty_clob();
END FUN_CONTROL_MEDICAMENTO;
