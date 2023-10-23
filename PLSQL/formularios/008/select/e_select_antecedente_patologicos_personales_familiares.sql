-- Antecedentes patologicos personales y familiares
BEGIN --No olvidarnos poner el control del firmado.Eso se realizará luego
SELECT
    CASE
        WHEN (
            SELECT
                COUNT(*)
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
        ) = 0 THEN 'true'
        ELSE 'false'
    END NO_APLICA, -- 88
    'true' ALERGICOS, -- 89
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'CLÍNICOS'
        ),
        'false'
    ) CLINICO, -- 90
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'GINECOLÓGICOS'
        ),
        'false'
    ) GINECOLOGICO, -- 91
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'TRAUMATOLÓGICOS'
        ),
        'false'
    ) TRAUMATOLOGICO, -- 92
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'PEDIÁTRICOS'
        ),
        'false'
    ) PEDIATRICO, -- 93
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'QUIRÚRGICOS'
        ),
        'false'
    ) QUIRURGICO, -- 94
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'FARMACOLÓGICOS'
        ),
        'false'
    ) FARMACOLOGICO, -- 95
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'HÁBITOS'
        ),
        'false'
    ) HABITOS, -- 96
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'FAMILIARES'
        ),
        'false'
    ) FAMILIARES, -- 97
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'OTROS'
        ),
        'false'
    ) OTROS, -- 98
    FUN_ANTECEDENTES_MEDICOS (A.CD_ATENDIMENTO) ANTECEDENTES_4 -- 99
    INTO V_CAMPO88,
    V_CAMPO89,
    V_CAMPO90,
    V_CAMPO91,
    V_CAMPO92,
    V_CAMPO93,
    V_CAMPO94,
    V_CAMPO95,
    V_CAMPO96,
    V_CAMPO97,
    V_CAMPO98,
    V_CAMPO99
FROM
    ATENDIME A
WHERE
    A.CD_ATENDIMENTO = VATENDIMENTO;

--VATENDIMENTO;
EXCEPTION WHEN OTHERS THEN NULL;

END;