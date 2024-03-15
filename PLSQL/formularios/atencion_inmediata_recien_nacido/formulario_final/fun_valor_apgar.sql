CREATE
OR REPLACE FUNCTION fun_valor_apgar (
    v_cd_atendimento IN NUMBER,
    v_cd_formula IN NUMBER
) RETURN NUMBER AS v_valor_truncado NUMBER;

BEGIN
/* v_cd_formula = 58 es al minuto, 59 = 5 minutos  */
SELECT
    trunc(t.vl_resultado) INTO v_valor_truncado
FROM
    pagu_avaliacao t
    JOIN pagu_formula f ON t.cd_formula = f.cd_formula
    JOIN pw_documento_clinico pw ON t.cd_documento_clinico = pw.cd_documento_clinico
WHERE
    t.cd_atendimento = v_cd_atendimento
    AND t.cd_formula = v_cd_formula
    AND pw.tp_status = 'FECHADO'
    AND t.cd_avaliacao IN (
        SELECT
            MAX(tt.cd_avaliacao)
        FROM
            pagu_avaliacao tt
            JOIN pw_documento_clinico w ON tt.cd_documento_clinico = w.cd_documento_clinico
        WHERE
            tt.cd_atendimento = t.cd_atendimento
            AND w.tp_status = 'FECHADO'
            AND tt.cd_formula = t.cd_formula
    );

RETURN v_valor_truncado;

EXCEPTION WHEN NO_DATA_FOUND THEN RETURN NULL;

END fun_valor_apgar;