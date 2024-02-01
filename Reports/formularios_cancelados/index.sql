SELECT
    P.NM_DOCUMENTO                                                  DOCUMENTO,
    NVL( PAC.CD_IDENTIFICADOR_PESSOA, PAC.NR_DOCUMENTO_ESTRANGEIRO) HISTORIA_CLINICA,
    ATEN.HR_ATENDIMENTO                                             FECHA_INGRESO,
    NVL(ATEN.DT_ALTA, ATEN.DT_ALTA_MEDICA)                          FECHA_EGRESO,
    C.DH_PROCESSO                                                   FECHA_CANCELACION,
    C.DS_JUSTIFICATIVA                                              JUSTIFICACION,
    U.NM_USUARIO                                                    USUARIO_CANCELACION
FROM
    PW_DOCUMENTO_CLINICO     P,
    PW_LOG_DOCUMENTO_CLINICO C,
    PACIENTE                 PAC,
    ATENDIME                 ATEN,
    USUARIOS                 U
WHERE
    P.CD_DOCUMENTO_CLINICO = C.CD_DOCUMENTO_CLINICO
    AND P.CD_PACIENTE = PAC.CD_PACIENTE
    AND P.CD_ATENDIMENTO = ATEN.CD_ATENDIMENTO
    AND C.CD_USUARIO = U.CD_USUARIO
    AND P.CD_ATENDIMENTO = 110358
    AND C.TP_ACAO = 'CANCELADO'
    AND P.TP_STATUS = 'CANCELADO'
    AND P.NM_DOCUMENTO IS NOT NULL