CREATE OR REPLACE FUNCTION FUN_CONTROL_LINEA_INTRAVENOSA(
    VATENDIMENTO NUMBER
) RETURN CLOB IS
    CURSOR DATOS IS
        SELECT
            RPAD(TLI.CD_REGISTRO_SECUENCIAL, 5)                         CD_REGISTRO_SECUENCIAL,
            RPAD(TO_CHAR(TLI.FECHA_INICIO, 'dd/mm/yyyy hh24:mi'), 18)   FECHA_INICIO,
            RPAD(TLI.TIPO, 20)                                          TIPO,
            RPAD(TLI.LOCALIZACION, 29)                                  LOCALIZACION,
            RPAD(TLI.CUIDADOS, 97)                                      CUIDADOS,
            --RPAD(TO_CHAR(TLI.FECHA_CURACION, 'dd/mm/yyyy hh24:mi'), 24) FECHA_CURACION
            TO_CHAR(TLI.FECHA_CURACION, 'dd/mm/yyyy hh24:mi')           FECHA_CURACION
        FROM
            T_LINEAS_INTRAVENOSAS TLI
        WHERE
            CD_ATENDIMENTO=VATENDIMENTO
        ORDER BY
            TLI.CD_REGISTRO_SECUENCIAL;
    VRESULTADO CLOB;
BEGIN
    FOR COLUMN IN DATOS LOOP
        VRESULTADO:=VRESULTADO
                    ||COLUMN.CD_REGISTRO_SECUENCIAL
                    ||COLUMN.FECHA_INICIO
                    ||COLUMN.TIPO
                    ||COLUMN.LOCALIZACION
                    ||COLUMN.CUIDADOS
                    ||COLUMN.FECHA_CURACION
                    ||CHR(10);
    END LOOP;
    RETURN(VRESULTADO);
END FUN_CONTROL_LINEA_INTRAVENOSA;
