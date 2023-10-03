CREATE OR REPLACE PROCEDURE PRC_INSERTA_T_EMERGENCIA(
    V_CD_FORMULARIO CHAR,
    V_CD_ATENDIMENTO NUMBER,
    V_FECHA_REGISTRO CHAR,
    V_FUENTE_INFORMACION VARCHAR2,
    V_TELEFONO_FUENTE CHAR,
    V_TIPO_MOTIVO_ATENCION VARCHAR2,
    V_DESCRIPCION_OTRO_MOTIVO VARCHAR2,
    V_FECHA_EVENTO VARCHAR2,
    V_LUGAR_EVENTO VARCHAR2,
    V_DIRECCION_EVENTO VARCHAR2,
    V_VIA_AEREA CHAR,
    V_CONDICION CHAR,
    V_DETALLE_ENFERMEDAD_ACTUAL VARCHAR2,
    V_SEMANAS_GESTACION CHAR,
    V_MOVIMIENTO CHAR,
    V_FRECUENCIA_FETAL CHAR,
    V_MEMBRANAS_ROTAS CHAR,
    V_TIEMPO CHAR,
    V_ALTURA_UTERINA CHAR,
    V_PRESENTACION CHAR,
    V_DILATACION CHAR,
    V_BORRAMIENTO CHAR,
    V_PLANO CHAR,
    V_PELVIS_UTIL CHAR,
    V_SANGRADO_VAGINAL CHAR,
    V_CONTRACCIONES CHAR,
    V_OTRO_EXAMEN VARCHAR2,
    V_OBSERVACIONES_OTRO_EXAMEN VARCHAR2,
    V_PLANES_TRATAMIENTO VARCHAR2,
    V_VALOR_ALCOCHEK CHAR,
    V_ESTADO CHAR,
    V_USUARIO CHAR,
    V_MONITOREO_GINECOLOGICO VARCHAR2,
    V_LOCALIZACION_1 CHAR,
    V_LOCALIZACION_2 CHAR,
    V_LOCALIZACION_3 CHAR,
    V_LOCALIZACION_4 CHAR,
    V_LOCALIZACION_5 CHAR,
    V_LOCALIZACION_6 CHAR,
    V_LOCALIZACION_7 CHAR,
    V_LOCALIZACION_8 CHAR,
    V_LOCALIZACION_9 CHAR,
    V_LOCALIZACION_10 CHAR,
    V_LOCALIZACION_11 CHAR,
    V_LOCALIZACION_12 CHAR,
    V_LOCALIZACION_13 CHAR,
    V_LOCALIZACION_14 CHAR,
    V_LOCALIZACION_15 CHAR,
    V_PARIENTE VARCHAR2,
    V_GESTAS CHAR,
    V_PARTOS CHAR,
    V_ABORTOS CHAR,
    V_CESAREAS CHAR,
    V_FUM VARCHAR2,
    V_CONSENTIMIENTO_VERBAL CHAR,
    V_COD NUMBER,
    V_ESPECIALIDAD VARCHAR2,
    V_LOCALIZACION_OTRO VARCHAR2,
    v_estable varchar2,
    v_inestable varchar2,
    v_fallecido varchar2,
    v_pelvis_viable varchar2,
    v_score_mama varchar2
) IS
    V_CUERPO_HUMANO    CLOB;
    V_REGISTRO_EDITOR  NUMBER;
    V_SECUENCIAL_MAYOR NUMBER;
BEGIN
 -- ENCUENTRA EL GRAFICO EN TABLAS DE EDITOR PARA ALMACENAR EN TABLA PERZONALIZADA
    BEGIN
 /*select x.lo_conteudo
    into   v_cuerpo_humano
    from   editor.editor_registro_campo x
    where  cd_campo=261292 and
           x.cd_registro in (select max(xx.cd_registro)
                             from editor.editor_registro_campo xx
                             where xx.cd_campo=x.cd_campo);*/
 /*select x.lo_conteudo
    into   v_cuerpo_humano
    from   editor.editor_registro_campo x,
           pw_editor_clinico pw,
           pw_documento_clinico doc
    where  x.cd_campo=261292 and
           pw.cd_documento_clinico=doc.cd_documento_clinico and
           pw.cd_editor_registro=x.cd_registro and
           doc.cd_atendimento=v_cd_atendimento and
           doc.tp_status='FECHADO';*/
        SELECT
            X.LO_CONTEUDO INTO V_CUERPO_HUMANO
        FROM
            EDITOR.EDITOR_REGISTRO_CAMPO X,
            PW_EDITOR_CLINICO            PW,
            PW_DOCUMENTO_CLINICO         DOC
        WHERE
            X.CD_CAMPO=297214
            AND PW.CD_DOCUMENTO_CLINICO=DOC.CD_DOCUMENTO_CLINICO
            AND PW.CD_EDITOR_REGISTRO=X.CD_REGISTRO
            AND DOC.CD_ATENDIMENTO=V_CD_ATENDIMENTO
            AND DOC.TP_STATUS='FECHADO'
            AND DOC.CD_DOCUMENTO_CLINICO IN (
                SELECT
                    MAX(DOCC.CD_DOCUMENTO_CLINICO)
                FROM
                    EDITOR.EDITOR_REGISTRO_CAMPO XX,
                    PW_EDITOR_CLINICO            PWW,
                    PW_DOCUMENTO_CLINICO         DOCC
                WHERE
                    XX.CD_CAMPO=X.CD_CAMPO
                    AND PWW.CD_DOCUMENTO_CLINICO=DOCC.CD_DOCUMENTO_CLINICO
                    AND PWW.CD_EDITOR_REGISTRO=XX.CD_REGISTRO
                    AND DOCC.CD_ATENDIMENTO=DOC.CD_ATENDIMENTO
                    AND DOCC.TP_STATUS='FECHADO'
            );
    EXCEPTION
        WHEN OTHERS THEN
            V_CUERPO_HUMANO:=NULL;
    END;
 -- ENCUENTRA EL REGISTRO DE EDITOR GRABADO
    BEGIN
        SELECT
            MAX(CD_EDITOR_REGISTRO) INTO V_REGISTRO_EDITOR
        FROM
            PW_EDITOR_CLINICO
        WHERE
            CD_DOCUMENTO=645;
    EXCEPTION
        WHEN OTHERS THEN
            V_REGISTRO_EDITOR:=NULL;
    END;
    BEGIN
        SELECT
            SEQ_ULTIMO_EMERGENCIA.NEXTVAL INTO V_SECUENCIAL_MAYOR
        FROM
            DUAL;
    EXCEPTION
        WHEN OTHERS THEN
            V_SECUENCIAL_MAYOR:=NULL;
    END;
    INSERT INTO EDITOR_CUSTOM.T_EMERGENCIA (
        CD_FORMULARIO,
        CD_ATENDIMENTO,
        FECHA_REGISTRO,
        FUENTE_INFORMACION,
        TELEFONO_FUENTE,
        TIPO_MOTIVO_ATENCION,
        DESCRIPCION_OTRO_MOTIVO,
        FECHA_EVENTO,
        LUGAR_EVENTO,
        DIRECCION_EVENTO,
        VIA_AEREA,
        CONDICION,
        DETALLE_ENFERMEDAD_ACTUAL,
        SEMANAS_GESTACION,
        MOVIMIENTO,
        FRECUENCIA_FETAL,
        MEMBRANAS_ROTAS,
        TIEMPO,
        ALTURA_UTERINA,
        PRESENTACION,
        DILATACION,
        BORRAMIENTO,
        PLANO,
        PELVIS_UTIL,
        SANGRADO_VAGINAL,
        CONTRACCIONES,
        OTRO_EXAMEN,
        OBSERVACIONES_OTRO_EXAMEN,
        PLANES_TRATAMIENTO,
        ALCOCHECK,
        ESTADO,
        USUARIO,
        MONITOREO_GINECOLOGICO,
        CUERPO_HUMANO,
        LOCALIZACION_1,
        LOCALIZACION_2,
        LOCALIZACION_3,
        LOCALIZACION_4,
        LOCALIZACION_5,
        LOCALIZACION_6,
        LOCALIZACION_7,
        LOCALIZACION_8,
        LOCALIZACION_9,
        LOCALIZACION_10,
        LOCALIZACION_11,
        LOCALIZACION_12,
        LOCALIZACION_13,
        LOCALIZACION_14,
        LOCALIZACION_15,
        PARIENTE_OTRO,
        GESTAS,
        PARTOS,
        ABORTOS,
        CESAREAS,
        FUM,
        CONSENTIMIENTO_VERBAL,
        CD_EMERGENCIA,
        CD_EDITOR_REGISTRO,
        CD_ULTIMO_REGISTRO,
        ESPECIALIDAD,
        LOCALIZACION_OTRO,
        estable,
        inestable,
        fallecido,
        pelvis_viable,
        score_mama
    ) VALUES (
        V_CD_FORMULARIO,
        V_CD_ATENDIMENTO,
        TO_DATE(V_FECHA_REGISTRO, 'dd/mm/yyyy hh24:mi'),
        REPLACE(V_FUENTE_INFORMACION, CHR(39), ' '),
        SUBSTR(V_TELEFONO_FUENTE, 1, 14),
        REPLACE(V_TIPO_MOTIVO_ATENCION, CHR(39), ' '),
        REPLACE(V_DESCRIPCION_OTRO_MOTIVO, CHR(39), ' '),
        V_FECHA_EVENTO,
        REPLACE(V_LUGAR_EVENTO, CHR(39), ' '),
        REPLACE(V_DIRECCION_EVENTO, CHR(39), ' '),
        V_VIA_AEREA,
        V_CONDICION,
        REPLACE(V_DETALLE_ENFERMEDAD_ACTUAL, CHR(39), ' '),
        V_SEMANAS_GESTACION,
        V_MOVIMIENTO,
        V_FRECUENCIA_FETAL,
        V_MEMBRANAS_ROTAS,
        V_TIEMPO,
        V_ALTURA_UTERINA,
        V_PRESENTACION,
        V_DILATACION,
        V_BORRAMIENTO,
        V_PLANO,
        V_PELVIS_UTIL,
        V_SANGRADO_VAGINAL,
        V_CONTRACCIONES,
        REPLACE(V_OTRO_EXAMEN, CHR(39), ' '),
        REPLACE(V_OBSERVACIONES_OTRO_EXAMEN, CHR(39), ' '),
        REPLACE(V_PLANES_TRATAMIENTO, CHR(39), ' '),
        V_VALOR_ALCOCHEK,
        V_ESTADO,
        V_USUARIO,
        REPLACE(V_MONITOREO_GINECOLOGICO, CHR(39), ' '),
        V_CUERPO_HUMANO,
        V_LOCALIZACION_1,
        V_LOCALIZACION_2,
        V_LOCALIZACION_3,
        V_LOCALIZACION_4,
        V_LOCALIZACION_5,
        V_LOCALIZACION_6,
        V_LOCALIZACION_7,
        V_LOCALIZACION_8,
        V_LOCALIZACION_9,
        V_LOCALIZACION_10,
        V_LOCALIZACION_11,
        V_LOCALIZACION_12,
        V_LOCALIZACION_13,
        V_LOCALIZACION_14,
        V_LOCALIZACION_15,
        V_PARIENTE,
        V_GESTAS,
        V_PARTOS,
        V_ABORTOS,
        V_CESAREAS,
        V_FUM,
        V_CONSENTIMIENTO_VERBAL,
        V_COD,
        V_REGISTRO_EDITOR,
        V_SECUENCIAL_MAYOR,
        V_ESPECIALIDAD,
        V_LOCALIZACION_OTRO,
        v_estable,
        v_inestable,
        v_fallecido,
        v_pelvis_viable,
        v_score_mama
    );
    COMMIT;
 --prc_inserta_t_tmp_008(v_cd_atendimento);
END PRC_INSERTA_T_EMERGENCIA;