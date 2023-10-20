-- DATOS EXAMENES
BEGIN
SELECT
    (
        SELECT
            CASE
                WHEN PRESCRIPCION = 0 THEN 'X'
                ELSE NULL
            END NO_APLICA_EXAMEN_COMPLEMEN
        FROM
            (
                SELECT
                    COUNT(*) PRESCRIPCION
                FROM
                    pre_med a,
                    itpre_med b,
                    tip_presc c,
                    pw_documento_clinico d
                WHERE
                    a.cd_pre_med = b.cd_pre_med
                    AND b.cd_tip_presc = c.cd_tip_presc
                    AND a.cd_documento_clinico = d.cd_documento_clinico
                    AND d.tp_status = 'FECHADO'
                    AND c.cd_tip_esq IN ('PME', 'EXL', 'EXI')
                    AND a.cd_atendimento = VATENDIMENTO-- VATENDIMENTO
                    AND NVL(b.sn_cancelado, 'N') = 'N'
            )
    ) NO_APLICA_EXAMEN_COMPLEMEN, --178
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (183, 184)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) BIOMETRIA, -- 154
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO --VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (376)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) UROANALISIS, -- 155
    null QUIMICA_SANGUINEA, -- 156
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X') VALOR
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (306)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ELECTROLITOS, -- 157
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (315, 316)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) GASOMETRIA, --158
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (678, 677, 679, 676)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ELECTROCARDIOGRAMA, -- 159
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('PME')
            AND B.CD_TIP_PRESC IN (1587, 1588)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ENDOSCOPIA, -- 160
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X') VALOR
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (631, 635, 561, 562, 563)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RX_TORAX, -- 161
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (632, 564, 565)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RX_ABDOMEN, -- 162
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (627, 17480, 586, 963, 17479, 17474)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RX_OSEA, -- 163
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (890, 891, 920)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ECOGRAFIA_ABDOMEN, -- 164
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (893)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ECOGRAFIA_PELVICA, -- 165
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B,
            TIP_PRESC C,
            EXA_RX D
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ = 'EXI'
            AND B.CD_TIP_PRESC = C.CD_TIP_PRESC
            AND C.CD_EXA_RX = D.CD_EXA_RX
            AND D.CD_MODALIDADE_EXAME = 2
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) TOMOGRAFIA, -- 166
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (
                766,
                765,
                767,
                716,
                715,
                717,
                713,
                712,
                714,
                734,
                733,
                989,
                990,
                729,
                985,
                730,
                986,
                996,
                740,
                739,
                995,
                731,
                987,
                732,
                988,
                696,
                695,
                697,
                699,
                698,
                700,
                702,
                701,
                703,
                707,
                706,
                708,
                693,
                694,
                681,
                680,
                682,
                743,
                997,
                744,
                998,
                758,
                688,
                687,
                689,
                685,
                686,
                741,
                742,
                726,
                759,
                764,
                727,
                983,
                728,
                984,
                737,
                993,
                738,
                994,
                735,
                991,
                736,
                992,
                745,
                999,
                746,
                1000,
                719,
                718,
                720,
                762,
                763,
                753,
                1007,
                754,
                1008,
                749,
                1003,
                750,
                1004,
                710,
                709,
                711,
                756,
                757,
                747,
                1001,
                748,
                1002,
                691,
                690,
                692,
                683,
                684,
                751,
                1005,
                752,
                1006,
                704,
                705,
                760,
                722,
                721,
                723
            )
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RESONANCIA, -- 167
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PAR_MED
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND DS_SOLICITACAO <> 'Cancelado'
    ) INTERCONSULTA, -- 168
    (
        SELECT
            DECODE(COUNT(*), 0, null, 'X')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO -- VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_PRESC NOT IN (
                183,
                184,
                315,
                316,
                1587,
                1588,
                632,
                564,
                565,
                875,
                805,
                807,
                806,
                808,
                876,
                1016,
                853,
                1015,
                854,
                840,
                850,
                1012,
                860,
                859,
                1021,
                820,
                799,
                800,
                843,
                1014,
                851,
                1013,
                852,
                795,
                796,
                879,
                871,
                872,
                873,
                818,
                793,
                794,
                801,
                802,
                842,
                798,
                809,
                844,
                847,
                870,
                1011,
                1010,
                848,
                845,
                846,
                1020,
                857,
                1019,
                858,
                1017,
                856,
                1018,
                1024,
                1023,
                862,
                797,
                813,
                810,
                811,
                812,
                1031,
                1030,
                869,
                1027,
                816,
                864,
                863,
                1026,
                830,
                804,
                867,
                1029,
                1028,
                874,
                803,
                824,
                814,
                893,
                376,
                306,
                678,
                677,
                679,
                676,
                631,
                635,
                561,
                562,
                563,
                631,
                635,
                561,
                562,
                563,
                766,
                765,
                767,
                716,
                715,
                717,
                713,
                712,
                714,
                734,
                733,
                989,
                990,
                729,
                985,
                730,
                986,
                996,
                740,
                739,
                995,
                731,
                987,
                732,
                988,
                696,
                695,
                697,
                699,
                698,
                700,
                702,
                701,
                703,
                707,
                706,
                708,
                693,
                694,
                681,
                680,
                682,
                743,
                997,
                744,
                998,
                758,
                688,
                687,
                689,
                685,
                686,
                741,
                742,
                726,
                759,
                764,
                727,
                983,
                728,
                984,
                737,
                993,
                738,
                994,
                735,
                991,
                736,
                992,
                745,
                999,
                746,
                1000,
                719,
                718,
                720,
                762,
                763,
                753,
                1007,
                754,
                1008,
                749,
                1003,
                750,
                1004,
                710,
                709,
                711,
                756,
                757,
                747,
                1001,
                748,
                1002,
                691,
                690,
                692,
                683,
                684,
                751,
                1005,
                752,
                1006,
                704,
                705,
                760,
                722,
                721,
                723,
                890,
                891,
                920
            )
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) OTROS, -- 169
    FUN_OBS_EXAMENES (VATENDIMENTO) OBSERVACIONES_EXAMENES, --170
    fun_diag_presuntivo_008(VATENDIMENTO), --171
    fun_diag_definitivo_008(VATENDIMENTO), --172
    FUN_PLANES_TRATAMIENTO_008(VATENDIMENTO), --173
    FUN_DETALLE_MEDICACION_008(VATENDIMENTO) --174
    INTO 
    V_CAMPO178, 
    V_CAMPO154,
    V_CAMPO155,
    V_CAMPO156,
    V_CAMPO157,
    V_CAMPO158,
    V_CAMPO159,
    V_CAMPO160,
    V_CAMPO161,
    V_CAMPO162,
    V_CAMPO163,
    V_CAMPO164,
    V_CAMPO165,
    V_CAMPO166,
    V_CAMPO167,
    V_CAMPO168,
    V_CAMPO169,
    V_CAMPO170,
    V_CAMPO171,
    V_CAMPO172,
    V_CAMPO173,
    V_CAMPO174
FROM
    DUAL;

EXCEPTION WHEN OTHERS THEN NULL;