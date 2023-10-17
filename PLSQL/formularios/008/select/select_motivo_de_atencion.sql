SELECT
    -- Falta 58, 59, 60
    DECODE(
        A.DETALLE_EVENTO,
        'ACCIDENTE DE TRÁNSITO',
        'X',
        null
    ) ACCIDENTE_TRANSITO, -- 62
    DECODE(A.DETALLE_EVENTO, 'CAÍDA', 'X', null) CAIDA, --63
    DECODE(A.DETALLE_EVENTO, 'QUEMADURA', 'X', null) QUEMADURA, --64
    DECODE(A.DETALLE_EVENTO, 'MORDEDURA', 'X', null) MORDEDURA, -- 65
    DECODE(A.DETALLE_EVENTO, 'AHOGAMIENTO', 'X', null) AHOGAMIENTO, -- 66
    DECODE(
        A.DETALLE_EVENTO,
        'CUERPO EXTRAÑO',
        'X',
        null
    ) CUERPO_EXTRANIO, -- 67
    DECODE(
        A.DETALLE_EVENTO,
        'APLASTAMIENTO',
        'X',
        null
    ) APLASTAMIENTO, -- 68
    DECODE(
        A.DETALLE_EVENTO,
        'OTRO ACCIDENTE',
        'X',
        null
    ) OTRO_ACCIDENTE, --69
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA X ARMA DE FUEGO',
        'X',
        null
    ) ARMA_FUEGO, -- 70
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA X ARMA C.',
        'X',
        null
    ) ARMA_C, -- 71
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA X RIÑA',
        'X',
        null
    ) VIOLENCIA_RINIA, -- 72
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA FAMILIAR',
        'X',
        null
    ) VIOLENCIA_FAMILIAR, --73
    DECODE(A.DETALLE_EVENTO, 'ABUSO FÍSICO', 'X', null) ABUSO_FISICO, -- 74
    DECODE(
        A.DETALLE_EVENTO,
        'ABUSO PSICOLÓGICO',
        'X',
        null
    ) ABUSO_SICOLOGICO, -- 75
    DECODE(A.DETALLE_EVENTO, 'ABUSO SEXUAL', 'X', null) ABUSO_SEXUAL, -- 76
    -- 77 por confirmar
    DECODE(
        A.DETALLE_EVENTO,
        'INTOXICACIÓN ALCOHÓLICA',
        'X',
        null
    ) INTOXICACION_ALCOHOLICA, --78
    DECODE(
        A.DETALLE_EVENTO,
        'INTOXICACIÓN ALIMENTARIA',
        'X',
        null
    ) INTOXICACION_ALIMENTARIA, -- 79
    DECODE(
        A.DETALLE_EVENTO,
        'INTOXICACIÓN X DROGAS',
        'X',
        null
    ) INTOXICACION_DROGAS, -- 80
    DECODE(
        A.DETALLE_EVENTO,
        'OTRA VIOLENCIA',
        'X',
        null
    ) OTRA_VIOLENCIA,
    DECODE(
        A.DETALLE_EVENTO,
        'INHALACIÓN DE GASES',
        'X',
        null
    ) INHALACION_GASES,-- 81
    DECODE(
        A.DETALLE_EVENTO,
        'OTRA INTOXICACIÓN',
        'X',
        null
    ) OTRA_INTOXICACION, -- 82
    DECODE(A.DETALLE_EVENTO, 'PICADURA', 'X', null) PICADURA, -- 83
    DECODE(A.DETALLE_EVENTO, 'ENVENAMIENTO', 'X', null) ENVENENAMIENTO, -- 84
    DECODE(A.DETALLE_EVENTO, 'ANAFILAXIA', 'X', null) ANAFILAXIA, --85
    FUN_MOTIVO_ATENCION (A.CD_ATENDIMENTO) OBSERVACIONES_3, -- 86
    DECODE(
        A.DETALLE_EVENTO,
        'ALIENTO ETÍLICO',
        'X',
        null
    ) ALIENTO_ETILICO -- 87 preguntar luego
    /* INTO V_CAMPO54,
    V_CAMPO55,
    V_CAMPO56,
    V_CAMPO57,
    V_CAMPO58,
    V_CAMPO59,
    V_CAMPO60,
    V_CAMPO61,
    V_CAMPO62,
    V_CAMPO63,
    V_CAMPO64,
    V_CAMPO65,
    V_CAMPO66,
    V_CAMPO67,
    V_CAMPO68,
    V_CAMPO69,
    V_CAMPO70,
    V_CAMPO71,
    V_CAMPO72,
    V_CAMPO73,
    V_CAMPO74,
    V_CAMPO75,
    V_CAMPO76,
    V_CAMPO77,
    V_CAMPO78,
    V_CAMPO80 */
FROM
    T_MOTIVO_ATENCION A
WHERE
    A.CD_ATENDIMENTO = 654--VATENDIMENTO
    AND A.FECHA_REGISTRO IN (
        SELECT
            MAX(B.FECHA_REGISTRO)
        FROM
            EDITOR_CUSTOM.T_MOTIVO_ATENCION B
        WHERE
            B.CD_ATENDIMENTO = 654--VATENDIMENTO
    );