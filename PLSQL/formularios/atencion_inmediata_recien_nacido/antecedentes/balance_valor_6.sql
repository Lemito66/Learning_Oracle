SELECT
    /* SUM(
        CASE
            WHEN d1.cantidad_valores = 0 THEN d2.VALOR
            WHEN d1.cantidad_valores <> 0 THEN d1.VALOR
            else 66
        END
    ) AS VALOR  */
    /* d1.cantidad_valores,
    d2.VALOR,
    d1.VALOR  */

    -- sumar los valores de d1 y d2 si d1.cantidad_valores = 0 caso contrario sumar solo d1.VALOR
    SUM(
        CASE
            WHEN d1.cantidad_valores = 0 THEN d2.VALOR + d1.VALOR
            WHEN d1.cantidad_valores <> 0 THEN d1.VALOR
            else 66
        END
    ) AS VALOR
FROM
    (
        SELECT
            SUM(d.vl_coleta) AS VALOR,
            COUNT(d.vl_coleta) AS cantidad_valores,
            a.cd_atendimento
        FROM
            pw_balanco_hidrico a,
            pw_balanco_hidrico_fechamento b,
            pw_grupo_balanco_hidrico c,
            pw_itbalanco_hidrico d,
            tip_presc e,
            for_apl f
        WHERE
            a.cd_atendimento = 129273
            AND editor_custom.FUN_VALIDA_FECHA_HORA (d.dh_coleta, TO_DATE('2024-02-15', 'YYYY-MM-DD')) = 1
            AND a.cd_balanco_hidrico = b.cd_balanco_hidrico
            AND b.cd_balanco_hidrico = c.cd_balanco_hidrico
            AND c.cd_grupo_balanco_hidrico = d.cd_grupo_balanco_hidrico
            AND d.cd_tip_presc IN (2996, 3002, 1254, 3011)
            AND d.cd_tip_presc = e.cd_tip_presc
            AND d.cd_for_apl = f.cd_for_apl (+)
            AND d.tp_calculo = 'G'
        GROUP BY
            a.cd_atendimento
        UNION ALL
        SELECT
            SUM(d.vl_coleta) AS VALOR,
            COUNT(d.vl_coleta) AS cantidad_valores,
            a.cd_atendimento
        FROM
            pw_balanco_hidrico a,
            pw_balanco_hidrico_fechamento b,
            pw_grupo_balanco_hidrico c,
            pw_itbalanco_hidrico d
        WHERE
            a.cd_atendimento = 129273
            AND editor_custom.FUN_VALIDA_FECHA_HORA (d.dh_coleta, TO_DATE('2024-02-15', 'YYYY-MM-DD')) = 1
            AND a.cd_balanco_hidrico = b.cd_balanco_hidrico
            AND b.cd_balanco_hidrico = c.cd_balanco_hidrico
            AND c.cd_grupo_balanco_hidrico = d.cd_grupo_balanco_hidrico
            AND d.tp_calculo = 'P'
            AND d.tp_item_predefinido = 'ELIM'
        GROUP BY
            a.cd_atendimento
    ) d1
    JOIN (
        SELECT
            SUM(d.vl_coleta) AS VALOR,
            a.cd_atendimento
        FROM
            pw_balanco_hidrico a
            JOIN pw_balanco_hidrico_fechamento b ON a.cd_balanco_hidrico = b.cd_balanco_hidrico
            JOIN pw_grupo_balanco_hidrico c ON b.cd_balanco_hidrico = c.cd_balanco_hidrico
            JOIN HMETRO.VM_PW_ITBALANCO_HIDRICO d ON c.cd_grupo_balanco_hidrico = d.cd_grupo_balanco_hidrico
            LEFT JOIN tip_presc e ON d.cd_tip_presc = e.cd_tip_presc
            LEFT JOIN for_apl f ON d.cd_for_apl = f.cd_for_apl
            JOIN atendime aa ON a.cd_atendimento = aa.cd_atendimento
        WHERE
            a.cd_atendimento = 129273
            AND editor_custom.FUN_VALIDA_FECHA_HORA (d.dh_coleta, TO_DATE('2024-02-15', 'YYYY-MM-DD')) = 1
            AND b.tp_fechamento = 'T'
            AND d.cd_tip_presc IN (3532, 3574, 3507, 19666, 19665, 3534)
        GROUP BY
            a.cd_atendimento
    ) d2 ON d1.cd_atendimento = d2.cd_atendimento