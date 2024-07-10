SELECT
    MEDICAMENTO.CD_REGISTRO_SECUENCIAL AS "ID",
    MEDICAMENTO.NOMBRE_GENERICO        AS "Nombre Genérico",
    MEDICAMENTO.NOMBRE_COMERCIAL       AS "Nombre Comercial",
    MEDICAMENTO.LOTE                   AS "Lote",
    MEDICAMENTO.FECHA_INICIO           AS "Fecha Inicio",
    MEDICAMENTO.FECHA_FIN              AS "Fecha Fin",
    MEDICAMENTO.DOSIS_DIARIA           AS "Dosis Diaria",
    MEDICAMENTO.VIA_ADMINISTRACION     AS "Via Administración",
    MEDICAMENTO.INDICACION             AS "Indicación"
FROM
    EDITOR_CUSTOM.T_INFORMACION_MEDICAMENTO MEDICAMENTO
WHERE
    CD_ATENDIMENTO='&<PAR_CD_ATENDIMENTO>'
    AND CD_SECUENCIAL = '&<532772:TXT_NUMERO_FORMULARIO33>'
ORDER BY
    MEDICAMENTO.CD_REGISTRO_SECUENCIAL