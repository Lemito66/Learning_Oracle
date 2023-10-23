--BEGIN
-- No olvidarnos poner el control del firmado. Eso se realizará luego
SELECT
    CASE
        WHEN (
            SELECT
                COUNT(*) 
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
        ) = 0 THEN 'X'
        ELSE NULL
    END NO_APLICA, -- 88
    'true' ALERGICOS, -- 89
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
    ) CLINICO, -- 90
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
    ) GINECOLOGICO, -- 91
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
    ) TRAUMATOLOGICO, -- 92
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
    ) PEDIATRICO, -- 93
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
    ) QUIRURGICO, -- 94
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
    ) FARMACOLOGICO, -- 95
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
    ) HABITOS, -- 96
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
    ) FAMILIARES, -- 97
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
    ) OTROS, -- 98
    FUN_ANTECEDENTES_MEDICOS (A.CD_ATENDIMENTO) ANTECEDENTES_4 -- 99
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
    A.CD_ATENDIMENTO = 654 --VATENDIMENTO;
/* EXCEPTION WHEN OTHERS THEN NULL;

END; */