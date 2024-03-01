CREATE
OR REPLACE FUNCTION fun_signos_vitales_4 (vAtendimento NUMBER, vSigno NUMBER) RETURN NVARCHAR2 IS v_fecha_hora VARCHAR2(20);

v_valor dbamv.itcoleta_sinal_vital.valor % TYPE;

v_nombre_signo dbamv.sinal_vital.ds_sinal_vital % TYPE;

v_nomenclatura NVARCHAR2(100);

v_resultado NVARCHAR2(4000);

BEGIN
SELECT
    TO_CHAR(i.data_coleta, 'DD/MM/YYYY HH24:MI:SS'),
    h.valor,
    j.ds_sinal_vital,
    CASE vSigno
        WHEN 1 THEN 'grados centígrados'
        WHEN 2 THEN '/ minuto'
        WHEN 3 THEN '/ minuto'
        WHEN 4 THEN 'mmHg'
        WHEN 5 THEN 'mmHg'
        WHEN 7 THEN '%'
    END INTO v_fecha_hora,
    v_valor,
    v_nombre_signo,
    v_nomenclatura
FROM
    dbamv.itcoleta_sinal_vital h
    JOIN dbamv.coleta_sinal_vital i ON h.cd_coleta_sinal_vital = i.cd_coleta_sinal_vital
    JOIN dbamv.sinal_vital j ON h.cd_sinal_vital = j.cd_sinal_vital
    JOIN pw_documento_clinico pw ON i.cd_documento_clinico = pw.cd_documento_clinico
WHERE
    i.cd_atendimento = vAtendimento
    AND h.cd_sinal_vital = vSigno
    AND h.valor IS NOT NULL
    AND pw.tp_status = 'FECHADO'
ORDER BY
    i.data_coleta ASC
FETCH FIRST
    1 ROWS ONLY;

v_resultado := 'Nombre signo: ' || v_nombre_signo || CHR(10) || 'Fecha y hora: ' || v_fecha_hora || ' - Valor: ' || v_valor || ' ' || v_nomenclatura || CHR(10) || CHR(10);

RETURN v_resultado;

END fun_signos_vitales_4;