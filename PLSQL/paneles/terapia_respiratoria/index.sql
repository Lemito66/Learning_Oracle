SELECT
    A.CD_ATENDIMENTO,
    E.NM_PACIENTE,
    DECODE(
        A.TP_ATENDIMENTO,
        'I',
        'HOSPITALIZACION',
        'EMERGENCIA'
    ) lugar,
    leito.ds_resumo cama,
    B.DT_PRE_MED,
    F.DS_TIP_PRESC,
    TO_DATE(
        TO_CHAR(A.DT_ALTA_MEDICA, 'DD/MM/YYYY') || ' ' || TO_CHAR(A.HR_ALTA_MEDICA, 'HH24:MI'),
        'DD/MM/YYYY HH24:MI'
    ) ALTA_MEDICA
FROM
    ATENDIME A
    INNER JOIN PRE_MED B ON B.CD_ATENDIMENTO = A.CD_ATENDIMENTO
    INNER JOIN ITPRE_MED C ON C.CD_PRE_MED = B.CD_PRE_MED
    INNER JOIN PW_DOCUMENTO_CLINICO D ON D.CD_DOCUMENTO_CLINICO = B.CD_DOCUMENTO_CLINICO
    INNER JOIN PACIENTE E ON E.CD_PACIENTE = A.CD_PACIENTE
    INNER JOIN TIP_PRESC F ON F.CD_TIP_PRESC = C.CD_TIP_PRESC
    inner join leito leito on leito.cd_leito = a.cd_leito
WHERE --a.cd_atendimento = &1 AND
    A.TP_ATENDIMENTO IN ('I', 'U')
    AND C.CD_TIP_ESQ = 'GAS'
    AND D.TP_STATUS = 'FECHADO'
    AND TRUNC(A.DT_ALTA_MEDICA) = TRUNC(SYSDATE)
ORDER BY
    A.CD_ATENDIMENTO,
    B.DT_PRE_MED DESC