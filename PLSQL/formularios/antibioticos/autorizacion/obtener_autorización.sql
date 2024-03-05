CREATE OR REPLACE FUNCTION obtener_autorizacion_prescrip (vAtendimento NUMBER, vPrescripcion number) RETURN CLOB IS
-- Declaración del cursor
CURSOR c_datos IS
SELECT
    d.ds_tip_presc antimicrobiano,
    b.qt_itpre_med dosis,
    e.ds_for_apl via_administracion,
    f.ds_tip_fre intervalo_dosis,
    decode(
        nvl(b.nr_dia, 0),
        0,
        '',
        '(Día ' || b.nr_dia || '/' || b.qt_dias || ')'
    ) duracion_tto
FROM
    PRE_MED A,
    ITPRE_MED B,
    PW_DOCUMENTO_CLINICO C,
    TIP_PRESC D,
    FOR_APL E,
    TIP_FRE F
WHERE
    A.CD_PRE_MED = B.CD_PRE_MED
    AND A.CD_DOCUMENTO_CLINICO = C.CD_DOCUMENTO_CLINICO
    AND C.TP_STATUS = 'FECHADO'
    AND NVL(B.SN_CANCELADO, 'N') = 'N'
    AND B.CD_TIP_PRESC = D.CD_TIP_PRESC
    AND B.CD_FOR_APL = E.CD_FOR_APL (+)
    AND B.CD_TIP_FRE = F.CD_TIP_FRE (+)
    AND A.CD_ATENDIMENTO = vAtendimento
    AND B.CD_TIP_ESQ = 'MDA'
    and a.cd_pre_med = vPrescripcion
ORDER BY
    A.CD_PRE_MED DESC;


-- Variable CLOB para almacenar los resultados
v_resultado CLOB;

-- Variables para almacenar temporalmente los valores
v_antimicrobiano TIP_PRESC.DS_TIP_PRESC % TYPE;
v_dosis ITPRE_MED.QT_ITPRE_MED % TYPE;
v_via_administracion FOR_APL.DS_FOR_APL % TYPE;
v_intervalo_dosis TIP_FRE.DS_TIP_FRE % TYPE;
v_duracion_tto VARCHAR2 (100);

/* v_area_muestra EDITOR_CUSTOM.T_AREA_MUESTRA_INFECCION.AREA_MUESTRA % TYPE;

v_fecha_registro EDITOR_CUSTOM.T_AREA_MUESTRA_INFECCION.FECHA_REGISTRO % TYPE;
 */
-- Variable para el contador
v_contador NUMBER := 1;

BEGIN
-- Inicializar resultado
v_resultado := '';

-- Abrir cursor
OPEN c_datos;

-- Recorrer cursor y construir el resultado
LOOP FETCH c_datos INTO v_antimicrobiano, v_dosis, v_via_administracion, v_intervalo_dosis, v_duracion_tto;

EXIT WHEN c_datos % NOTFOUND;

-- Construir el resultado concatenando los valores con el contador
v_resultado := v_resultado || v_contador || '. ' || 'Antimicrobiano: ' || v_antimicrobiano || ' - ' || 'Dosis: ' || v_dosis || ' - ' || 'Vía de administración: ' || v_via_administracion || ' - ' || 'Intervalo de dosis: ' || v_intervalo_dosis || ' - ' || 'Duración del TTO: ' || v_duracion_tto || CHR (10);

-- Incrementar el contador
v_contador := v_contador + 1;

END
LOOP;

-- Cerrar cursor
CLOSE c_datos;

-- Devolver el resultado
RETURN v_resultado;

END obtener_autorizacion_prescrip;
