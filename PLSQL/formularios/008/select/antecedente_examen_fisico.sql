SELECT
    
    'true' ALERGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'CLÍNICO'
        ),
        'false'
    ) CLINICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'GINECOLÓGICO'
        ),
        'false'
    ) GINECOLOGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'TRAUMATOLÓGICO'
        ),
        'false'
    ) TRAUMATOLOGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'QUIRÚRGICO'
        ),
        'false'
    ) QUIRURGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'FARMACOLÓGICO'
        ),
        'false'
    ) FARMACOLOGICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE = 'PEDIÁTRICO'
        ),
        'false'
    ) PEDIATRICO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_ANTECEDENTE_PERS_FAM
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND TIPO_ANTECEDENTE IN ('OTRO', 'NATURÓPATA')
        ),
        'false'
    ) OTRO,
    FUN_ANTECEDENTES_MEDICOS (A.CD_ATENDIMENTO) ANTECEDENTES_4,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'VÍA AÉREA OBSTRUÍDA'
        ),
        'false'
    ) VIA_AREA_OBSTRUIDA,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'CABEZA'
        ),
        'false'
    ) CABEZA,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'CUELLO'
        ),
        'false'
    ) CUELLO,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'TÓRAX'
        ),
        'false'
    ) TORAX,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'ABDOMEN'
        ),
        'false'
    ) ABDOMEN,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'COLUMNA'
        ),
        'false'
    ) COLUMNA,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'PELVIS'
        ),
        'false'
    ) PELVIS,
    NVL(
        (
            SELECT
                DECODE(COUNT(*), 0, 'false', 'true')
            FROM
                T_EXAMEN_FISICO A
            WHERE
                CD_ATENDIMENTO = A.CD_ATENDIMENTO
                AND A.TIPO_EXAMEN_FISICO = 'EXTREMIDADES'
        ),
        'false'
    ) EXTREMIDADES,
    FUN_EXAMEN_FISICO_008 (A.CD_ATENDIMENTO) OBSERVACIONES_7 INTO V_CAMPO81,
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
    V_CAMPO120
FROM
    ATENDIME A
WHERE
    A.CD_ATENDIMENTO = VATENDIMENTO;