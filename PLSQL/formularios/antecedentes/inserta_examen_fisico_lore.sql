CREATE OR REPLACE PROCEDURE PRC_INSERTA_T_EXAMEN_FISICO (
    V_CD_FORMULARIO CHAR,
    V_CD_ATENDIMENTO NUMBER,
    V_FECHA_REGISTRO DATE,
    V_TIPO_EXAMEN_FISICO VARCHAR2,
    V_OBSERVACIONES_EXAMEN_FISICO VARCHAR2,
    V_SP_CP CHAR,
    V_ESTADO CHAR,
    V_USUARIO VARCHAR2,
    V_CODIGO NUMBER,
    V_CODIGO_EMERGENCIA NUMBER
) IS
    CP_SP_NR VARCHAR2(10);
    VCOD     NUMBER;
BEGIN
 -- CLASIFICA SIN PATOLOGIA, CON PATOLOGIA, NO REVISADO
    IF V_SP_CP LIKE '%CON PATOLOGIA%' OR V_SP_CP LIKE '%CON PATOLOGÍA%' THEN
        CP_SP_NR:='CP';
    ELSIF V_SP_CP LIKE '%SIN PATOLOGIA%' OR V_SP_CP LIKE '%SIN PATOLOGÍA%' THEN
        CP_SP_NR:='SP';
    ELSIF V_SP_CP LIKE '%NO REVISADO%' THEN
        CP_SP_NR:='NR';
    END IF;
    /*
    Porque realiza el delete  
     */
    BEGIN
        DELETE T_EXAMEN_FISICO
        WHERE
            CD_ATENDIMENTO=V_CD_ATENDIMENTO
            AND TIPO_EXAMEN_FISICO=V_TIPO_EXAMEN_FISICO
            AND CD_FORMULARIO=V_CD_FORMULARIO;
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- Porque verificamos si el tipo de examen fisico es diferente a primaria o tipo de examen fisico es primaria y las observaciones no son nulas
    IF V_TIPO_EXAMEN_FISICO NOT LIKE '%PRIMARIA%' OR (V_TIPO_EXAMEN_FISICO LIKE '%PRIMARIA%'
    AND V_OBSERVACIONES_EXAMEN_FISICO IS NOT NULL) THEN
 --if v_codigo is null then
 --select seq_examen_fisico.nextval into vCod from dual;
        BEGIN
            SELECT
                NVL(MAX(CD_EXAMEN_FISICO), 0)+1 INTO VCOD
            FROM
                T_EXAMEN_FISICO
            WHERE
                CD_ATENDIMENTO=V_CD_ATENDIMENTO;
        EXCEPTION
            WHEN OTHERS THEN
                VCOD:=1;
        END;
 -- INSERTA DETALLE
        BEGIN
            INSERT INTO T_EXAMEN_FISICO (
                CD_FORMULARIO,
                CD_ATENDIMENTO,
                FECHA_REGISTRO,
                TIPO_EXAMEN_FISICO,
                OBSERVACIONES_EXAMEN_FISICO,
                SP_CP,
                ESTADO,
                USUARIO,
                CD_EXAMEN_FISICO,
                CD_EMERGENCIA
            ) VALUES (
                V_CD_FORMULARIO,
                V_CD_ATENDIMENTO,
                V_FECHA_REGISTRO,
                V_TIPO_EXAMEN_FISICO,
                REPLACE(V_OBSERVACIONES_EXAMEN_FISICO, CHR(39), ' '),
                CP_SP_NR,
                V_ESTADO,
                V_USUARIO,
                VCOD,
                V_CODIGO_EMERGENCIA
            );
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;
 /*else
      update t_examen_fisico
      set CD_FORMULARIO=v_cd_formulario,
          CD_ATENDIMENTO=v_cd_atendimento,
          FECHA_REGISTRO=v_fecha_registro,
          TIPO_EXAMEN_FISICO=v_tipo_examen_fisico,
          OBSERVACIONES_EXAMEN_FISICO=replace(v_observaciones_examen_fisico,chr(39),' '),
          SP_CP=CP_SP_NR,
          ESTADO=v_estado,
          USUARIO=v_usuario
      where cd_examen_fisico=v_codigo and
            cd_atendimento=v_cd_atendimento and
            CD_EMERGENCIA=v_codigo_emergencia;
    end if;*/
    END IF;
    COMMIT;
END PRC_INSERTA_T_EXAMEN_FISICO;