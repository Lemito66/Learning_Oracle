SELECT
    P.DS_PRIMEIRO_SOBRENOME
    ||' '
    || P.DS_SEGUNDO_SOBRENOME
    ||' '
    ||P.DS_PRIMEIRO_NOME
    ||' '
    ||P.DS_SEGUNDO_NOME                                        NOMBRE,
    FN_IDADE(P.DT_NASCIMENTO, 'a "a", m "m", d "d"')           EDAD,
    NVL(P.CD_IDENTIFICADOR_PESSOA, P.NR_DOCUMENTO_ESTRANGEIRO) HISTORIA_CLINICA,
    P.CD_PACIENTE                                              NUMERO_ARCHIVO,
    A.CD_ATENDIMENTO                                           NUMERO_ATENCION,
    '065472'                                                   UNICODIGO,
    C.NM_CONVENIO                                              CONVENIO,
    P.TP_SEXO                                                  SEXO,
    L.DS_LEITO                                                 LEITO,
    PR.NM_PRESTADOR
    || ' - '
    || E.DS_ESPECIALID                                         MEDICO,
    TO_CHAR(A.DT_ATENDIMENTO, 'DD/MM/YYYY HH24:MI')            FECHA_INGRESO
FROM
    PACIENTE   P,
    ATENDIME   A,
    CONVENIO   C,
    LEITO      L,
    PRESTADOR  PR,
    ESPECIALID E,
    ESP_MED    EM
WHERE
    P.CD_PACIENTE=A.CD_PACIENTE
    AND C.CD_CONVENIO=A.CD_CONVENIO
    AND L.CD_LEITO=A.CD_LEITO
    AND A.CD_PRESTADOR = PR.CD_PRESTADOR
    AND PR.CD_PRESTADOR= EM.CD_PRESTADOR
    AND EM.CD_ESPECIALID=E.CD_ESPECIALID
    AND EM.SN_ESPECIAL_PRINCIPAL='S'
    AND A.CD_ATENDIMENTO=110358