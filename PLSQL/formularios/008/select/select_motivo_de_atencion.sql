SELECT
    DECODE(
        A.DETALLE_EVENTO,
        'ACCIDENTE DE TRÁNSITO',
        'true',
        'false'
    ) ACCIDENTE_TRANSITO,
    DECODE(A.DETALLE_EVENTO, 'CAÍDA', 'true', 'false') CAIDA,
    DECODE(A.DETALLE_EVENTO, 'QUEMADURA', 'true', 'false') QUEMADURA,
    DECODE(A.DETALLE_EVENTO, 'MORDEDURA', 'true', 'false') MORDEDURA,
    DECODE(A.DETALLE_EVENTO, 'AHOGAMIENTO', 'true', 'false') AHOGAMIENTO,
    DECODE(
        A.DETALLE_EVENTO,
        'CUERPO EXTRAÑO',
        'true',
        'false'
    ) CUERPO_EXTRANIO,
    DECODE(
        A.DETALLE_EVENTO,
        'APLASTAMIENTO',
        'true',
        'false'
    ) APLASTAMIENTO,
    DECODE(
        A.DETALLE_EVENTO,
        'OTRO ACCIDENTE',
        'true',
        'false'
    ) OTRO_ACCIDENTE,
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA X ARMA DE FUEGO',
        'true',
        'false'
    ) ARMA_FUEGO,
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA X ARMA C.',
        'true',
        'false'
    ) ARMA_C,
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA X RIÑA',
        'true',
        'false'
    ) VIOLENCIA_RINIA,
    DECODE(
        A.DETALLE_EVENTO,
        'VIOLENCIA FAMILIAR',
        'true',
        'false'
    ) VIOLENCIA_FAMILIAR,
    DECODE(A.DETALLE_EVENTO, 'ABUSO FÍSICO', 'true', 'false') ABUSO_FISICO,
    DECODE(
        A.DETALLE_EVENTO,
        'ABUSO PSICOLÓGICO',
        'true',
        'false'
    ) ABUSO_SICOLOGICO,
    DECODE(A.DETALLE_EVENTO, 'ABUSO SEXUAL', 'true', 'false') ABUSO_SEXUAL,
    DECODE(
        A.DETALLE_EVENTO,
        'OTRA VIOLENCIA',
        'true',
        'false'
    ) OTRA_VIOLENCIA,
    DECODE(
        A.DETALLE_EVENTO,
        'INTOXICACIÓN ALCOHÓLICA',
        'true',
        'false'
    ) INTOXICACION_ALCOHOLICA,
    DECODE(
        A.DETALLE_EVENTO,
        'INTOXICACIÓN ALIMENTARIA',
        'true',
        'false'
    ) INTOXICACION_ALIMENTARIA,
    DECODE(
        A.DETALLE_EVENTO,
        'INTOXICACIÓN X DROGAS',
        'true',
        'false'
    ) INTOXICACION_DROGAS,
    DECODE(
        A.DETALLE_EVENTO,
        'INHALACIÓN DE GASES',
        'true',
        'false'
    ) INHALACION_GASES,
    DECODE(
        A.DETALLE_EVENTO,
        'OTRA INTOXICACIÓN',
        'true',
        'false'
    ) OTRA_INTOXICACION,
    DECODE(A.DETALLE_EVENTO, 'ENVENAMIENTO', 'true', 'false') ENVENENAMIENTO,
    DECODE(A.DETALLE_EVENTO, 'PICADURA', 'true', 'false') PICADURA,
    DECODE(A.DETALLE_EVENTO, 'ANAFILAXIA', 'true', 'false') ANAFILAXIA,
    DECODE(
        A.DETALLE_EVENTO,
        'ALIENTO ETÍLICO',
        'true',
        'false'
    ) ALIENTO_ETILICO,
    FUN_MOTIVO_ATENCION (A.CD_ATENDIMENTO) OBSERVACIONES_3 INTO V_CAMPO54,
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
    V_CAMPO80
FROM
    T_MOTIVO_ATENCION A
WHERE
    A.CD_ATENDIMENTO = VATENDIMENTO
    AND A.FECHA_REGISTRO IN (
        SELECT
            MAX(B.FECHA_REGISTRO)
        FROM
            EDITOR_CUSTOM.T_MOTIVO_ATENCION B
        WHERE
            B.CD_ATENDIMENTO = VATENDIMENTO
    );