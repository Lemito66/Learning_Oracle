SELECT
    --t1.tp_status,
    t1.dt_gerado fecha,
    --t1.cd_atendimento,
    --t3.cd_pre_med,
    --t4.nm_exa_lab,
    --t1.cd_exame,
    --t1.cd_pedido,
    --t1.nm_exame,
    -- t1.cd_atendimento,
    REPLACE(
        REPLACE(t1.nm_exame, 'ï¿½', '�'),
        'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½',
        '�'
    ) nombre_examen,
    t1.ds_resultado resultado
    --t1.vl_normal_abso_ref_inicio,
    --t1.vl_normal_abso_ref_fim,
    --t1.cd_registro_principal,
    --t1.cd_registro_pai
FROM
    IMV_RESULTADO_PSSD T1,
    atendime t2,
    ped_lab t3,
    exa_lab t4
where --TRUNC(T2.HR_ATENDIMENTO) = TRUNC(SYSDATE) AND
    --t1.cd_atendimento = 120088 and
    FUN_VALIDA_FECHA_HORA (t1.dt_gerado, sysdate) = 1
    and t1.cd_atendimento = 115991
    and
    --t3.cd_pre_med = 699845 and
    --trunc(t1.dt_gerado) = trunc(sysdate) and
    t1.tp_status = 'T'
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
            to_number(Q1.CD_ATENDIMENTO) = T2.CD_ATENDIMENTO
            AND
            --TRUNC(Q1.DT_GERADO) = TRUNC(SYSDATE) AND
            Q1.NM_EXAME = T1.NM_EXAME
    )
order by
    cd_imv_resultado_pssd