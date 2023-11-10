SELECT
    t1.cd_pre_med,
    t5.tp_atendimento,
    t5.cd_paciente,
    t6.nm_paciente,
    TRUNC((MONTHS_BETWEEN(SYSDATE, t6.dt_nascimento)) / 12) || ' AÑOS' EDAD,
    t1.cd_atendimento AT_MV,
    e.ds_especialid ESPECIALIDAD,
    t4.nm_prestador MED_MV,
    t1.cd_pre_med,
    TRUNC(t1.dh_impressao) fecha_pedido,
    TO_CHAR(t1.dh_impressao, 'HH24:MI') hora_pedido,
    l.ds_leito UBICACION,
    ui.ds_unid_int SECTOR,
    editor_custom.fun_signos_vitales_h (t5.cd_paciente, 8) PESO,
    editor_custom.fun_signos_vitales_h (t5.cd_paciente, 9) ALTURA,
    s.ds_servico SERVICIO
FROM
    pre_med t1,
    atendime t5,
    prestador t4,
    especialid e,
    paciente t6,
    leito l,
    unid_int ui,
    servico s
WHERE
    TRUNC(t1.dh_impressao) =  TRUNC(SYSDATE) -- Fecha de hoy.
    AND t1.cd_pre_med IN (
        SELECT
            t3.cd_pre_med
        FROM
            itpre_med t3
        WHERE
            t3.cd_tip_esq = 'GAS'
            and NVL(t3.sn_cancelado, 'N') = 'N' -- Aquí se controla que se muestre las prescripciones que tienen al menos un item activo
    )
    AND t1.cd_objeto IN (420)
    AND t1.fl_impresso = 'S'
    AND t1.cd_atendimento = t5.cd_atendimento
    AND t5.tp_atendimento IN ('U', 'I')
    AND t5.cd_paciente = t6.cd_paciente
    AND t5.cd_especialid = e.cd_especialid (+)
    AND t5.cd_leito = l.cd_leito (+)
    AND t5.cd_prestador = t4.cd_prestador (+)
    AND l.cd_unid_int = ui.cd_unid_int (+)
    AND t5.cd_servico = s.cd_servico (+)