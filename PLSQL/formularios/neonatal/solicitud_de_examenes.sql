SELECT
    t3.dt_pedido fecha_pedido,
    t1.dt_gerado fecha_realizacion,
    REPLACE(
        REPLACE(t1.nm_exame, 'ï¿½', '�'),
        'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½',
        '�'
    ) nombre_examen
FROM
    IMV_RESULTADO_PSSD T1,
    atendime t2,
    ped_lab t3,
    exa_lab t4
where
    t1.cd_atendimento = 115991
    and t1.tp_status = 'T'
    and t1.cd_atendimento = t2.cd_atendimento
    and t2.tp_atendimento = 'I'
    and t2.dt_alta is null
    and t1.cd_pedido = t3.cd_ped_lab
    and t1.cd_versao IS NOT NULL
    and t1.cd_exame = t4.cd_exa_lab
    and UPPER(
        REPLACE(
            REPLACE(t1.nm_exame, 'ï¿½', '�'),
            'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½',
            '�'
        )
    ) in (
        'PH',
        'PC02',
        'PO2',
        'HC03',
        'SAO2',
        'EXCESO DE BASE',
        'LACTATO',
        'SODIO',
        'POTASIO',
        'CALCIO',
        'HEMATOCRITO',
        'GLUCOSA',
        'BILIRRUBINAS',
        'DENSIDAD URINARIA'
    )
    AND t1.cd_pedido = (
        SELECT
            MAX(Q1.CD_PEDIDO)
        FROM
            IMV_RESULTADO_PSSD Q1
        WHERE
            Q1.CD_ATENDIMENTO = T2.CD_ATENDIMENTO
            AND Q1.NM_EXAME = T1.NM_EXAME
    )
order by
    cd_imv_resultado_pssd