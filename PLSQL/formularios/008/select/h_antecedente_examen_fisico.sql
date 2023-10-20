BEGIN
SELECT
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'PIEL - FANERAS'
    ) PIEL_FANERAS, -- 116
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'CABEZA'
    ) CABEZA, -- 117
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'OJOS'
    ) OJOS, -- 118
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'OÍDOS'
    ) OIDOS, -- 119
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'NARIZ'
    ) NARIZ, -- 120
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'BOCA'
    ) BOCA, -- 121
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'ORO FARINGE'
    ) ORO_FARINGE, -- 122
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'CUELLO'
    ) CUELLO, -- 123
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'AXILAS - MAMAS'
    ) AXILAS_MAMAS, -- 124
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'TÓRAX'
    )TORAX, -- 125
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'ABDOMEN'
    ) ABDOMEN, -- 126
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'COLUMNA VERTEBRAL'
    ) COLUMNA_VERTEBRAL, -- 127
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'INGLE - PERINÉ'
    ) INGRE_PERINE, -- 128
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'MIEMBROS SUPERIORES'
    ) MIEMBROS_SUPERIORES, -- 129
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'MIEMBROS INFERIORES'
    ) MIEMBROS_INFERIORES, -- 130
    FUN_EXAMEN_FISICO_008 (VATENDIMENTO)  OBSERVACIONES_EXAMEN_FISICO, -- 131 --VATENDIMENTO
    (
        SELECT
            DECODE(A.observaciones_examen_fisico, NULL, NULL, 'X')
            
        FROM
            T_EXAMEN_FISICO A
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO--VATENDIMENTO --VATENDIMENTO
            AND A.TIPO_EXAMEN_FISICO = 'REVISIÓN PRIMARIA'
    ) EXAMEN_FISICO_TRAUMA -- 132
    /* INTO 
    V_CAMPO116,
    V_CAMPO117,
    V_CAMPO118,
    V_CAMPO119,
    V_CAMPO120,
    V_CAMPO121,
    V_CAMPO122,
    V_CAMPO123,
    V_CAMPO124,
    V_CAMPO125,
    V_CAMPO126,
    V_CAMPO127,
    V_CAMPO128,
    V_CAMPO129,
    V_CAMPO130,
    V_CAMPO131,
    V_CAMPO132
     */
    
FROM
    DUAL
EXCEPTION WHEN OTHERS THEN NULL;

END;