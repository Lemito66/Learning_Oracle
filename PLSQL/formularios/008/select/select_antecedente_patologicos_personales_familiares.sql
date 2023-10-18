--BEGIN
SELECT
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'ALÉRGICOS'
        ),
        null
    ) ALERGICOS,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'CLÍNICOS'
        ),
        null
    ) CLINICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'GINECOLÓGICOS'
        ),
        null
    ) GINECOLOGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'TRAUMATOLÓGICOS'
        ),
        null
    ) TRAUMATOLOGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'PEDIÁTRICOS'
        ),
        null
    ) PEDIATRICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'QUIRÚRGICOS'
        ),
        null
    ) QUIRURGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'FARMACOLÓGICOS'
        ),
        null
    ) FARMACOLOGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'HÁBITOS'
        ),
        null
    ) HABITOS,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'FAMILIARES'
        ),
        null
    ) FAMILIARES,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, null, 'X')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'OTROS'
        ),
        null
    ) OTROS,
    FUN_ANTECEDENTES_MEDICOS (A.CD_ATENDIMENTO) ANTECEDENTES_4
    /* INTO V_CAMPO81,
    V_CAMPO82,
    V_CAMPO83,
    V_CAMPO84,
    V_CAMPO85,
    V_CAMPO86,
    V_CAMPO87,
    V_CAMPO88,
    V_CAMPO89,
    V_CAMPO112,
    V_CAMPO113,
    V_CAMPO114,
    V_CAMPO115,
    V_CAMPO116,
    V_CAMPO117,
    V_CAMPO118,
    V_CAMPO119,
    V_CAMPO120 */
FROM
    ATENDIME A
WHERE
    A.CD_ATENDIMENTO = 654--VATENDIMENTO;

/* EXCEPTION WHEN OTHERS THEN NULL;

END; */