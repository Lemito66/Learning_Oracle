CREATE
OR REPLACE PROCEDURE PRC_INSERTA_T_TMP_008 (VATENDIMENTO NUMBER) IS V_CAMPO1 VARCHAR2(50);

V_CAMPO2 VARCHAR2(50);

V_CAMPO3 VARCHAR2(50);

V_CAMPO4 VARCHAR2(50);

V_CAMPO5 VARCHAR2(50);

V_CAMPO6 VARCHAR2(50);

V_CAMPO7 VARCHAR2(50);

V_CAMPO8 VARCHAR2(50);

V_CAMPO9 VARCHAR2(100);

V_CAMPO10 VARCHAR2(100);

V_CAMPO11 VARCHAR2(100);

V_CAMPO12 VARCHAR2(100);

V_CAMPO13 VARCHAR2(20);

V_CAMPO14 VARCHAR2(100);

V_CAMPO15 VARCHAR2(50);

V_CAMPO16 VARCHAR2(50);

V_CAMPO17 VARCHAR2(50);

V_CAMPO18 VARCHAR2(50);

V_CAMPO19 VARCHAR2(50);

V_CAMPO20 VARCHAR2(50);

V_CAMPO21 VARCHAR2(20);

V_CAMPO22 VARCHAR2(50);

V_CAMPO23 VARCHAR2(20);

V_CAMPO24 VARCHAR2(50);

V_CAMPO25 VARCHAR2(20);

V_CAMPO26 VARCHAR2(20);

V_CAMPO27 VARCHAR2(20);

V_CAMPO28 VARCHAR2(50);

V_CAMPO29 VARCHAR2(20);

V_CAMPO30 VARCHAR2(50);

V_CAMPO31 VARCHAR2(100);

V_CAMPO32 VARCHAR2(100);

V_CAMPO33 VARCHAR2(100);

V_CAMPO34 VARCHAR2(100);

V_CAMPO35 VARCHAR2(50);

V_CAMPO36 VARCHAR2(100);

V_CAMPO37 VARCHAR2(20);

V_CAMPO38 VARCHAR2(100);

V_CAMPO39 VARCHAR2(100);

V_CAMPO40 VARCHAR2(100);

V_CAMPO41 VARCHAR2(20);

V_CAMPO42 VARCHAR2(20);

V_CAMPO43 VARCHAR2(10);

V_CAMPO44 VARCHAR2(10);

V_CAMPO45 VARCHAR2(10);

V_CAMPO46 VARCHAR2(10);

V_CAMPO47 VARCHAR2(10);

V_CAMPO48 VARCHAR2(10);

V_CAMPO49 CLOB;

V_CAMPO50 VARCHAR2(20);

V_CAMPO51 VARCHAR2(50);

V_CAMPO52 VARCHAR2(100);

V_CAMPO53 VARCHAR2(10);

V_CAMPO54 VARCHAR2(10);

V_CAMPO55 VARCHAR2(10);

V_CAMPO56 VARCHAR2(10);

V_CAMPO57 VARCHAR2(10);

V_CAMPO58 VARCHAR2(10);

V_CAMPO59 VARCHAR2(10);

V_CAMPO60 VARCHAR2(10);

V_CAMPO61 VARCHAR2(10);

V_CAMPO62 VARCHAR2(10);

V_CAMPO63 VARCHAR2(10);

V_CAMPO64 VARCHAR2(10);

V_CAMPO65 VARCHAR2(10);

V_CAMPO66 VARCHAR2(10);

V_CAMPO67 VARCHAR2(10);

V_CAMPO68 VARCHAR2(10);

V_CAMPO69 VARCHAR2(10);

V_CAMPO70 VARCHAR2(10);

V_CAMPO71 VARCHAR2(10);

V_CAMPO72 VARCHAR2(10);

V_CAMPO73 VARCHAR2(10);

V_CAMPO74 VARCHAR2(10);

V_CAMPO75 VARCHAR2(10);

V_CAMPO76 VARCHAR2(10);

V_CAMPO77 VARCHAR2(10);

V_CAMPO78 VARCHAR2(10);

V_CAMPO79 VARCHAR2(10);

V_CAMPO80 CLOB;

V_CAMPO81 VARCHAR2(10);

V_CAMPO82 VARCHAR2(10);

V_CAMPO83 VARCHAR2(10);

V_CAMPO84 VARCHAR2(10);

V_CAMPO85 VARCHAR2(10);

V_CAMPO86 VARCHAR2(10);

V_CAMPO87 VARCHAR2(10);

V_CAMPO88 VARCHAR2(10);

V_CAMPO89 CLOB;

V_CAMPO90 VARCHAR2(10);

V_CAMPO91 VARCHAR2(10);

V_CAMPO92 VARCHAR2(10);

V_CAMPO93 VARCHAR2(10);

V_CAMPO94 CLOB;

V_CAMPO95 VARCHAR2(10);

V_CAMPO96 VARCHAR2(10);

V_CAMPO97 VARCHAR2(10);

V_CAMPO98 VARCHAR2(10);

V_CAMPO99 VARCHAR2(10);

V_CAMPO100 VARCHAR2(10);

V_CAMPO101 VARCHAR2(10);

V_CAMPO102 VARCHAR2(10);

V_CAMPO103 VARCHAR2(10);

V_CAMPO104 VARCHAR2(10);

V_CAMPO105 VARCHAR2(10);

V_CAMPO106 VARCHAR2(10);

V_CAMPO107 VARCHAR2(10);

V_CAMPO108 VARCHAR2(10);

V_CAMPO109 VARCHAR2(10);

V_CAMPO110 VARCHAR2(10);

V_CAMPO111 VARCHAR2(10);

V_CAMPO112 VARCHAR2(10);

V_CAMPO113 VARCHAR2(10);

V_CAMPO114 VARCHAR2(10);

V_CAMPO115 VARCHAR2(10);

V_CAMPO116 VARCHAR2(10);

V_CAMPO117 VARCHAR2(10);

V_CAMPO118 VARCHAR2(10);

V_CAMPO119 VARCHAR2(10);

V_CAMPO120 CLOB;

V_CAMPO121 CLOB;

V_CAMPO122 VARCHAR2(10);

V_CAMPO123 VARCHAR2(10);

V_CAMPO124 VARCHAR2(10);

V_CAMPO125 VARCHAR2(10);

V_CAMPO126 VARCHAR2(10);

V_CAMPO127 VARCHAR2(10);

V_CAMPO128 VARCHAR2(10);

V_CAMPO129 VARCHAR2(10);

V_CAMPO130 VARCHAR2(10);

V_CAMPO131 VARCHAR2(10);

V_CAMPO132 VARCHAR2(10);

V_CAMPO133 VARCHAR2(10);

V_CAMPO134 VARCHAR2(10);

V_CAMPO135 VARCHAR2(10);

V_CAMPO136 VARCHAR2(50);

V_CAMPO137 VARCHAR2(10);

V_CAMPO138 VARCHAR2(50);

V_CAMPO139 VARCHAR2(50);

V_CAMPO140 VARCHAR2(50);

V_CAMPO141 VARCHAR2(50);

V_CAMPO142 VARCHAR2(50);

V_CAMPO143 VARCHAR2(50);

V_CAMPO144 VARCHAR2(50);

V_CAMPO145 VARCHAR2(50);

V_CAMPO146 VARCHAR2(50);

V_CAMPO147 VARCHAR2(50);

V_CAMPO148 VARCHAR2(50);

V_CAMPO149 VARCHAR2(50);

V_CAMPO150 VARCHAR2(50);

V_CAMPO151 VARCHAR2(50);

V_CAMPO152 VARCHAR2(50);

V_CAMPO153 VARCHAR2(50);

V_CAMPO154 VARCHAR2(50);

V_CAMPO155 VARCHAR2(50);

V_CAMPO156 CLOB;

V_CAMPO157 VARCHAR2(10);

V_CAMPO158 VARCHAR2(10);

V_CAMPO159 VARCHAR2(10);

V_CAMPO160 VARCHAR2(10);

V_CAMPO161 VARCHAR2(10);

V_CAMPO162 VARCHAR2(10);

V_CAMPO163 VARCHAR2(10);

V_CAMPO164 VARCHAR2(10);

V_CAMPO165 VARCHAR2(10);

V_CAMPO166 VARCHAR2(10);

V_CAMPO167 VARCHAR2(10);

V_CAMPO168 VARCHAR2(10);

V_CAMPO169 VARCHAR2(10);

V_CAMPO170 VARCHAR2(10);

V_CAMPO171 VARCHAR2(10);

V_CAMPO172 VARCHAR2(10);

V_CAMPO173 VARCHAR2(100);

V_CAMPO174 VARCHAR2(10);

V_CAMPO175 CLOB;

V_CAMPO176 CLOB;

V_CAMPO177 CLOB;

V_CAMPO178 CLOB;

V_CAMPO179 CLOB;

V_CAMPO180 VARCHAR2(100);

V_CAMPO181 VARCHAR2(50);

BEGIN
-- ELIMINA EL REGISTRO EXISTENTE
BEGIN DELETE T_TMP_008
WHERE
    CAMPO7 = VATENDIMENTO;

EXCEPTION WHEN OTHERS THEN NULL;

END;

COMMIT;

-- CONSULTA CAMPOS DEL PACIENTE Y PACIENTE
BEGIN
SELECT
    B.DS_MULTI_EMPRESA INSTITUCION_DEL_SISTEMA,
    DECODE(A.TP_ATENDIMENTO, 'U', 'EMERGENCIA', '') UNIDAD_OPERATIVA,
    'BELISARIO QUEVEDO' PARROQUIA_EMPRESA,
    C.NM_CIDADE CANTON_EMPRESA,
    D.NM_ESTADO PROVINCIA_EMPRESA,
    E.CD_PACIENTE NHCL,
    A.CD_ATENDIMENTO ADMISIÓN,
    DECODE(A.TP_MEDICO_ELEITO, 'H', 'HOSPITAL', 'PARTICULAR') TIPO_PACIENTE,
    E.DS_PRIMEIRO_SOBRENOME APELLIDO_PATERNO_PACIENTE,
    E.DS_SEGUNDO_SOBRENOME APELLIDO_MATERNO_PACIENTE,
    E.DS_PRIMEIRO_NOME PRIMER_NOMBRE_PACIENTE,
    E.DS_SEGUNDO_NOME SEGUNDO_NOMBRE_PACIENTE,
    NVL(
        E.CD_IDENTIFICADOR_PESSOA,
        E.NR_DOCUMENTO_ESTRANGEIRO
    ) CEDULA_CIUDADANIA_PACIENTE,
    E.DS_ENDERECO DIRECCION_RESIDENCIAL_PACIENTE,
    NULL BARRIO_PACIENTE,
    E.NM_BAIRRO PARROQUIA_PACIENTE,
    F.NM_CIDADE CANTON_PACIENTE,
    G.NM_ESTADO PROVINCIA_PACIENTE,
    NULL ZONA_PACIENTE,
    NVL(E.NR_FONE, E.NR_CELULAR) TELEFONO_PACIENTE,
    TO_CHAR(E.DT_NASCIMENTO, 'dd/mm/yyyy') FECHA_NACIMIENTO_PACIENTE,
    F.NM_CIDADE LUGAR_NACIMIENTO_PACIENTE,
    H.DS_CIDADANIA NACIONALIDAD_PACIENTE,
    DECODE(
        E.TP_COR,
        'S',
        'SIN INFORMACIÓN',
        'R',
        'MONTUBIO',
        'P',
        'MESTIZO',
        'I',
        'INDIGENA',
        'B',
        'BLANCO',
        'A',
        'AFROECUATORIANO'
    ) GRUPO_CULTURAL_PACIENTE,
    FN_IDADE (E.DT_NASCIMENTO) EDAD_PACIENTE,
    DECODE(E.TP_SEXO, 'M', 'MASCULINO', ' FEMENINO') SEXO_PACIENTE,
    DECODE(
        E.TP_ESTADO_CIVIL,
        'S',
        'SOLTERO',
        'C',
        'CASADO',
        'I',
        'DIVORCIADO',
        'V',
        'VIUDO',
        'U',
        'UNION LIBRE'
    ) ESTADO_CIVIL_PACIENTE,
    I.DS_GRAU_INS INSTRUCCION_PACIENTE,
    TO_CHAR(A.HR_ATENDIMENTO, 'dd/mm/yyyy') FECHA_ADMISIÓN,
    J.NM_PROFISSAO OCUPACION_PACIENTE,
    E.DS_TRABALHO EMPRESA_TRABAJO_PACIENTE,
    K.NM_CONVENIO CONVENIO_PACIENTE,
    L.DS_LOC_PROCED REFERIDO_PACIENTE,
    M.NM_RESPONSAVEL AVISAR_A_PACIENTE,
    N.DS_TIP_PAREN PARIENTE_PACIENTE,
    M.DS_ENDERECO DIRECCION_PARIENTE_PACIENTE,
    M.NR_FONE TELEFONO_PACIENTE_PACIENTE,
    O.DS_MEIO_TRANSPORTE LLEGADA_PACIENTE,
    L.DS_LOC_PROCED ENTREGA_PACIENTE,
    NVL(E.TP_SANGUINEO, 'DESC.') GRUPO_SANGUINEO,
    DECODE(A.SN_NOTIFICAR_POLICIA, 'N', 'NO', 'SI') NOTIFICACION_POLICIA,
    DECODE(A.SN_CUSTODIA_POLICIAL, 'N', 'NO', 'SI') CUSTODIA_POLICIAL INTO V_CAMPO1,
    V_CAMPO2,
    V_CAMPO3,
    V_CAMPO4,
    V_CAMPO5,
    V_CAMPO6,
    V_CAMPO7,
    V_CAMPO8,
    V_CAMPO9,
    V_CAMPO10,
    V_CAMPO11,
    V_CAMPO12,
    V_CAMPO13,
    V_CAMPO14,
    V_CAMPO15,
    V_CAMPO16,
    V_CAMPO17,
    V_CAMPO18,
    V_CAMPO19,
    V_CAMPO20,
    V_CAMPO21,
    V_CAMPO22,
    V_CAMPO23,
    V_CAMPO24,
    V_CAMPO25,
    V_CAMPO26,
    V_CAMPO27,
    V_CAMPO28,
    V_CAMPO29,
    V_CAMPO30,
    V_CAMPO31,
    V_CAMPO32,
    V_CAMPO33,
    V_CAMPO34,
    V_CAMPO35,
    V_CAMPO36,
    V_CAMPO37,
    V_CAMPO38,
    V_CAMPO40,
    V_CAMPO47,
    V_CAMPO48,
    V_CAMPO53
FROM
    ATENDIME A,
    MULTI_EMPRESAS B,
    CIDADE C,
    ESTADO D,
    PACIENTE E,
    CIDADE F,
    ESTADO G,
    CIDADANIAS H,
    GRAU_INS I,
    PROFISSAO J,
    CONVENIO K,
    LOC_PROCED L,
    RESPONSA M,
    TIP_PAREN N,
    MEIO_TRANSPORTE O
WHERE
    A.CD_MULTI_EMPRESA = B.CD_MULTI_EMPRESA (+)
    AND B.CD_CIDADE = C.CD_CIDADE (+)
    AND A.CD_ATENDIMENTO = VATENDIMENTO
    AND C.CD_ESTADO = D.CD_ESTADO (+)
    AND A.CD_PACIENTE = E.CD_PACIENTE (+)
    AND E.CD_CIDADE = F.CD_CIDADE (+)
    AND F.CD_ESTADO = G.CD_ESTADO (+)
    AND E.CD_CIDADANIA = H.CD_CIDADANIA (+)
    AND E.CD_GRAU_INS = I.CD_GRAU_INS (+)
    AND E.CD_PROFISSAO = J.CD_PROFISSAO (+)
    AND A.CD_CONVENIO = K.CD_CONVENIO (+)
    AND A.CD_LOC_PROCED = L.CD_LOC_PROCED (+)
    AND A.CD_ATENDIMENTO = M.CD_ATENDIMENTO (+)
    AND M.CD_TIP_PAREN = N.CD_TIP_PAREN (+)
    AND A.CD_MEIO_TRANSPORTE = O.CD_MEIO_TRANSPORTE (+);

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- CONSULTA LA FECHA DE LA ATENCIÓN
BEGIN
SELECT
    TO_CHAR(A.FECHA_REGISTRO, 'dd/mm/yyyy hh24:mi') HORA_ATENCION INTO V_CAMPO42
FROM
    T_EMERGENCIA A
WHERE
    A.CD_ATENDIMENTO = VATENDIMENTO
    AND A.CD_ULTIMO_REGISTRO IN (
        SELECT
            MIN(B.CD_ULTIMO_REGISTRO)
        FROM
            T_EMERGENCIA B
        WHERE
            B.CD_ATENDIMENTO = VATENDIMENTO
    );

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- DATOS DE LA ATENCION
BEGIN
SELECT
    DECODE(A.TIPO_MOTIVO_ATENCION, 'TRAUMA', 'true', 'false') TRAUMA_X,
    DECODE(
        A.TIPO_MOTIVO_ATENCION,
        'CAUSA CLÍNICA',
        'true',
        'false'
    ) CAUSA_CLINICA_X,
    DECODE(
        A.TIPO_MOTIVO_ATENCION,
        'CAUSA G. OBSTÉTRICA',
        'true',
        'false'
    ) CAUSA_OBSTETRICA_X,
    DECODE(
        A.TIPO_MOTIVO_ATENCION,
        'CAUSA QUIRÚRGICA',
        'true',
        'false'
    ) CAUSA_QUIRURGICA_X,
    A.FECHA_EVENTO,
    A.LUGAR_EVENTO,
    A.DIRECCION_EVENTO,
    DECODE(NVL(A.ALCOCHECK, 'NO'), 'NO', 'false', 'true') ALCOCHECK,
    DECODE(A.VIA_AEREA, 'LIBRE', 'true', 'false') VIA_AREA_LIBRE,
    DECODE(A.VIA_AEREA, 'OBSTRUÍDA', 'true', 'false') VIA_AREA_OBSTRUIDA,
    DECODE(A.CONDICION, 'ESTABLE', 'true', 'false') CONDICION_ESTABLE,
    DECODE(A.CONDICION, 'INESTABLE', 'true', 'false') CONDICION_INESTABLE,
    A.DETALLE_ENFERMEDAD_ACTUAL ENFERMEDAD_ACTUAL,
    -- SIGNOS VITALES
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 4) PRESION_ARTERIAL_1,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 5) PRESION_ARTERIAL_2,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 2) FRECUENCIA_CARDIACA,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 3) FRECUENCIA_RESPIRATORIA,
    FUN_SIGNOS_VITALES_TEMPERATURA (A.CD_ATENDIMENTO, 8) TEMPERATURA_BUCAL,
    FUN_SIGNOS_VITALES_TEMPERATURA (A.CD_ATENDIMENTO, 7) TEMPERATURA_AXILAR,
    FUN_SIGNOS_VITALES_U (A.CD_ATENDIMENTO, 8) PESO,
    FUN_SIGNOS_VITALES_U (A.CD_ATENDIMENTO, 9) TALLA,
    FUN_SIGNOS_VITALES_IMC (A.CD_ATENDIMENTO) IMC,
    FUN_SIGNOS_VITALES_GLASGOW (A.CD_ATENDIMENTO, 'OCULAR') OCULAR,
    FUN_SIGNOS_VITALES_GLASGOW (A.CD_ATENDIMENTO, 'VERBAL') VERBAL,
    FUN_SIGNOS_VITALES_GLASGOW (A.CD_ATENDIMENTO, 'MOTORA') MOTORA,
    FUN_SIGNOS_VITALES_GLASGOW_T_U (A.CD_ATENDIMENTO) TOTAL_GLASGOW,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 42) REACCION_DERECHA,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 43) REACCION_IZQUIERDA,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 41) LLENADO_CAPILAR,
    FUN_SIGNOS_VITALES (A.CD_ATENDIMENTO, 7) SATURACION_OXIGENO,
    -- HERIDAS
    DECODE(A.LOCALIZACION_1, 0, NULL, A.LOCALIZACION_1) LOCALIZACION_1,
    DECODE(A.LOCALIZACION_2, 0, NULL, A.LOCALIZACION_2) LOCALIZACION_2,
    DECODE(A.LOCALIZACION_3, 0, NULL, A.LOCALIZACION_3) LOCALIZACION_3,
    DECODE(A.LOCALIZACION_4, 0, NULL, A.LOCALIZACION_4) LOCALIZACION_4,
    DECODE(A.LOCALIZACION_5, 0, NULL, A.LOCALIZACION_5) LOCALIZACION_5,
    DECODE(A.LOCALIZACION_6, 0, NULL, A.LOCALIZACION_6) LOCALIZACION_6,
    DECODE(A.LOCALIZACION_7, 0, NULL, A.LOCALIZACION_7) LOCALIZACION_7,
    DECODE(A.LOCALIZACION_8, 0, NULL, A.LOCALIZACION_8) LOCALIZACION_8,
    DECODE(A.LOCALIZACION_9, 0, NULL, A.LOCALIZACION_9) LOCALIZACION_9,
    DECODE(A.LOCALIZACION_10, 0, NULL, A.LOCALIZACION_10) LOCALIZACION_10,
    DECODE(A.LOCALIZACION_11, 0, NULL, A.LOCALIZACION_11) LOCALIZACION_11,
    DECODE(A.LOCALIZACION_12, 0, NULL, A.LOCALIZACION_12) LOCALIZACION_12,
    DECODE(A.LOCALIZACION_13, 0, NULL, A.LOCALIZACION_13) LOCALIZACION_13,
    DECODE(A.LOCALIZACION_14, 0, NULL, A.LOCALIZACION_14) LOCALIZACION_14,
    DECODE(A.LOCALIZACION_15, 0, NULL, A.LOCALIZACION_15) LOCALIZACION_15,
    A.LOCALIZACION_OTRO,
    -- DATOS GINECOLOGICOS
    A.GESTAS,
    A.PARTOS,
    A.ABORTOS,
    A.CESAREAS,
    A.FUM,
    A.SEMANAS_GESTACION,
    A.MOVIMIENTO,
    A.FRECUENCIA_FETAL,
    A.MEMBRANAS_ROTAS,
    A.TIEMPO,
    A.ALTURA_UTERINA,
    A.PRESENTACION,
    A.DILATACION,
    A.BORRAMIENTO,
    A.PLANO,
    A.PELVIS_UTIL,
    A.SANGRADO_VAGINAL,
    A.CONTRACCIONES,
    A.MONITOREO_GINECOLOGICO,
    -- OTROS EXAMENES
    OBSERVACIONES_OTRO_EXAMEN,
    DECODE(
        TRIM(A.CONSENTIMIENTO_VERBAL),
        'SI',
        'true',
        'false'
    ) CONSENTIMIENTO_VERBAL,
    -- DIAGNOSTICOS
    FUN_DIAGNOSTICOS_INGRESO_008 (A.CD_ATENDIMENTO) DIAGNOSTICO_INGRESO,
    FUN_DIAGNOSTICOS_EGRESO_008 (A.CD_ATENDIMENTO) DIAGNOSTICO_EGRESO,
    -- PLANES DE EGRESO
    'INDICACIONES' || CHR(10) || '---------------------' || CHR(10) || PLANES_TRATAMIENTO PLAN_TRATAMIENTO_1,
    FUN_DETALLE_MEDICACION_008 (A.CD_ATENDIMENTO) PLAN_TRATAMIENTO_2,
    -- FINAL USUARIO
    U.NM_USUARIO USUARIO_CREA,
    U.CD_IDENTIFICADOR_PESSOA CODIGO_CREA,
    A.FUENTE_INFORMACION,
    A.TELEFONO_FUENTE INTO V_CAMPO43,
    V_CAMPO44,
    V_CAMPO45,
    V_CAMPO46,
    V_CAMPO50,
    V_CAMPO51,
    V_CAMPO52,
    V_CAMPO79,
    V_CAMPO90,
    V_CAMPO91,
    V_CAMPO92,
    V_CAMPO93,
    V_CAMPO94,
    V_CAMPO95,
    V_CAMPO96,
    V_CAMPO97,
    V_CAMPO98,
    V_CAMPO99,
    V_CAMPO100,
    V_CAMPO101,
    V_CAMPO102,
    V_CAMPO103,
    V_CAMPO104,
    V_CAMPO105,
    V_CAMPO106,
    V_CAMPO107,
    V_CAMPO108,
    V_CAMPO109,
    V_CAMPO110,
    V_CAMPO111,
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
    V_CAMPO132,
    V_CAMPO133,
    V_CAMPO134,
    V_CAMPO135,
    V_CAMPO136,
    V_CAMPO137,
    V_CAMPO138,
    V_CAMPO139,
    V_CAMPO140,
    V_CAMPO141,
    V_CAMPO142,
    V_CAMPO143,
    V_CAMPO144,
    V_CAMPO145,
    V_CAMPO146,
    V_CAMPO147,
    V_CAMPO148,
    V_CAMPO149,
    V_CAMPO150,
    V_CAMPO151,
    V_CAMPO152,
    V_CAMPO153,
    V_CAMPO154,
    V_CAMPO155,
    V_CAMPO156,
    V_CAMPO173,
    V_CAMPO174,
    V_CAMPO176,
    V_CAMPO177,
    V_CAMPO178,
    V_CAMPO179,
    V_CAMPO180,
    V_CAMPO181,
    V_CAMPO39,
    V_CAMPO41
FROM
    T_EMERGENCIA A,
    USUARIOS U
WHERE
    A.CD_ATENDIMENTO = VATENDIMENTO
    AND TRIM(A.USUARIO) = U.CD_USUARIO
    AND A.CD_ULTIMO_REGISTRO IN (
        SELECT
            MAX(B.CD_ULTIMO_REGISTRO)
        FROM
            T_EMERGENCIA B
        WHERE
            B.CD_ATENDIMENTO = VATENDIMENTO
    );

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- CAMPOS DE FORMULARIOS
BEGIN
SELECT
    (
        SELECT
            D.LO_CONTEUDO
        FROM
            PW_EDITOR_CLINICO A,
            PW_DOCUMENTO_CLINICO B,
            EDITOR.EDITOR_REGISTRO C,
            EDITOR.EDITOR_REGISTRO_CAMPO D,
            EDITOR.EDITOR_CAMPO E
        WHERE
            A.CD_DOCUMENTO = 645
            AND A.CD_DOCUMENTO_CLINICO = B.CD_DOCUMENTO_CLINICO
            AND B.TP_STATUS = 'FECHADO'
            AND A.CD_EDITOR_REGISTRO = C.CD_REGISTRO
            AND B.CD_ATENDIMENTO = VATENDIMENTO
            AND C.CD_REGISTRO = D.CD_REGISTRO
            AND C.CD_REGISTRO = A.CD_EDITOR_REGISTRO
            AND D.CD_CAMPO = E.CD_CAMPO
            AND E.CD_METADADO = 76058
            AND B.CD_DOCUMENTO_CLINICO IN (
                SELECT
                    MAX(X.CD_DOCUMENTO_CLINICO)
                FROM
                    PW_DOCUMENTO_CLINICO X,
                    PW_EDITOR_CLINICO Y
                WHERE
                    X.TP_STATUS = 'FECHADO'
                    AND Y.CD_DOCUMENTO = 645
                    AND X.CD_ATENDIMENTO = VATENDIMENTO
                    AND X.CD_DOCUMENTO_CLINICO = Y.CD_DOCUMENTO_CLINICO
            )
    ) OTRO_MOTIVO,
    (
        SELECT
            X.LO_CONTEUDO
        FROM
            EDITOR.EDITOR_REGISTRO_CAMPO X,
            PW_EDITOR_CLINICO PW,
            PW_DOCUMENTO_CLINICO DOC
        WHERE
            X.CD_CAMPO IN (
                293670,
                261292,
                297052,
                297214,
                320538,
                320758,
                343291,
                97907,
                349991,
                373231,
                374652,
                375081,
                429896
            )
            AND PW.CD_DOCUMENTO_CLINICO = DOC.CD_DOCUMENTO_CLINICO
            AND PW.CD_EDITOR_REGISTRO = X.CD_REGISTRO
            AND DOC.CD_ATENDIMENTO = VATENDIMENTO
            AND DOC.TP_STATUS = 'FECHADO'
            AND DOC.CD_DOCUMENTO_CLINICO IN (
                SELECT
                    MAX(DOCC.CD_DOCUMENTO_CLINICO)
                FROM
                    EDITOR.EDITOR_REGISTRO_CAMPO XX,
                    PW_EDITOR_CLINICO PWW,
                    PW_DOCUMENTO_CLINICO DOCC
                WHERE
                    XX.CD_CAMPO = X.CD_CAMPO
                    AND PWW.CD_DOCUMENTO_CLINICO = DOCC.CD_DOCUMENTO_CLINICO
                    AND PWW.CD_EDITOR_REGISTRO = XX.CD_REGISTRO
                    AND DOCC.CD_ATENDIMENTO = VATENDIMENTO
                    AND DOCC.TP_STATUS = 'FECHADO'
            )
    ) IMAGEN INTO V_CAMPO49,
    V_CAMPO121
FROM
    DUAL;

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- ANTECEDENTE, EXAMEN FISICO
BEGIN
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

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- MOTIVO DE ATENCION
BEGIN
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

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- DATOS EXAMENES
BEGIN
SELECT
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (183, 184)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) BIOMETRIA,
    'false' QUIMICA_SANGUINEA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (315, 316)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) GASOMETRIA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('PME')
            AND B.CD_TIP_PRESC IN (1587, 1588)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ENDOSCOPIA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (632, 564, 565)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RX_ABDOMEN,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B,
            TIP_PRESC C,
            EXA_RX D
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ = 'EXI'
            AND B.CD_TIP_PRESC = C.CD_TIP_PRESC
            AND C.CD_EXA_RX = D.CD_EXA_RX
            AND D.CD_MODALIDADE_EXAME = 2
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) TOMOGRAFIA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (893)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ECOGRAFIA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PAR_MED
        WHERE
            CD_ATENDIMENTO = VATENDIMENTO
            AND DS_SOLICITACAO <> 'Cancelado'
    ) INTERCONSULTA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (376)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) UROANALISIS,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true') VALOR
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXL')
            AND B.CD_TIP_PRESC IN (306)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ELECTROLITOS,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (678, 677, 679, 676)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ELECTROCARDIOGRAMA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true') VALOR
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (631, 635, 561, 562, 563)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RX_TORAX,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (627, 17480, 586, 963, 17479, 17474)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) RX_OSEA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
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
    ) RESONANCIA,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
            AND A.CD_PRE_MED = B.CD_PRE_MED
            AND B.CD_TIP_ESQ IN ('EXI')
            AND B.CD_TIP_PRESC IN (890, 891, 920)
            AND NVL(B.SN_CANCELADO, 'N') = 'N'
    ) ECOGRAFIA_ABDOMEN,
    (
        SELECT
            DECODE(COUNT(*), 0, 'false', 'true')
        FROM
            PRE_MED A,
            ITPRE_MED B
        WHERE
            A.CD_ATENDIMENTO = VATENDIMENTO
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
    ) OTROS,
    FUN_OBS_EXAMENES (10090) INTO V_CAMPO157,
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
    V_CAMPO175
FROM
    DUAL;

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- ******* INSERTA EN TABLA TOTAL DE CAMPOS ******
BEGIN
INSERT INTO
    T_TMP_008 (
        CAMPO1,
        CAMPO2,
        CAMPO3,
        CAMPO4,
        CAMPO5,
        CAMPO6,
        CAMPO7,
        CAMPO8,
        CAMPO9,
        CAMPO10,
        CAMPO11,
        CAMPO12,
        CAMPO13,
        CAMPO14,
        CAMPO15,
        CAMPO16,
        CAMPO17,
        CAMPO18,
        CAMPO19,
        CAMPO20,
        CAMPO21,
        CAMPO22,
        CAMPO23,
        CAMPO24,
        CAMPO25,
        CAMPO26,
        CAMPO27,
        CAMPO28,
        CAMPO29,
        CAMPO30,
        CAMPO31,
        CAMPO32,
        CAMPO33,
        CAMPO34,
        CAMPO35,
        CAMPO36,
        CAMPO37,
        CAMPO38,
        CAMPO39,
        CAMPO40,
        CAMPO41,
        CAMPO42,
        CAMPO43,
        CAMPO44,
        CAMPO45,
        CAMPO46,
        CAMPO47,
        CAMPO48,
        CAMPO49,
        CAMPO50,
        CAMPO51,
        CAMPO52,
        CAMPO53,
        CAMPO54,
        CAMPO55,
        CAMPO56,
        CAMPO57,
        CAMPO58,
        CAMPO59,
        CAMPO60,
        CAMPO61,
        CAMPO62,
        CAMPO63,
        CAMPO64,
        CAMPO65,
        CAMPO66,
        CAMPO67,
        CAMPO68,
        CAMPO69,
        CAMPO70,
        CAMPO71,
        CAMPO72,
        CAMPO73,
        CAMPO74,
        CAMPO75,
        CAMPO76,
        CAMPO77,
        CAMPO78,
        CAMPO79,
        CAMPO80,
        CAMPO81,
        CAMPO82,
        CAMPO83,
        CAMPO84,
        CAMPO85,
        CAMPO86,
        CAMPO87,
        CAMPO88,
        CAMPO89,
        CAMPO90,
        CAMPO91,
        CAMPO92,
        CAMPO93,
        CAMPO94,
        CAMPO95,
        CAMPO96,
        CAMPO97,
        CAMPO98,
        CAMPO99,
        CAMPO100,
        CAMPO101,
        CAMPO102,
        CAMPO103,
        CAMPO104,
        CAMPO105,
        CAMPO106,
        CAMPO107,
        CAMPO108,
        CAMPO109,
        CAMPO110,
        CAMPO111,
        CAMPO112,
        CAMPO113,
        CAMPO114,
        CAMPO115,
        CAMPO116,
        CAMPO117,
        CAMPO118,
        CAMPO119,
        CAMPO120,
        CAMPO121,
        CAMPO122,
        CAMPO123,
        CAMPO124,
        CAMPO125,
        CAMPO126,
        CAMPO127,
        CAMPO128,
        CAMPO129,
        CAMPO130,
        CAMPO131,
        CAMPO132,
        CAMPO133,
        CAMPO134,
        CAMPO135,
        CAMPO136,
        CAMPO137,
        CAMPO138,
        CAMPO139,
        CAMPO140,
        CAMPO141,
        CAMPO142,
        CAMPO143,
        CAMPO144,
        CAMPO145,
        CAMPO146,
        CAMPO147,
        CAMPO148,
        CAMPO149,
        CAMPO150,
        CAMPO151,
        CAMPO152,
        CAMPO153,
        CAMPO154,
        CAMPO155,
        CAMPO156,
        CAMPO157,
        CAMPO158,
        CAMPO159,
        CAMPO160,
        CAMPO161,
        CAMPO162,
        CAMPO163,
        CAMPO164,
        CAMPO165,
        CAMPO166,
        CAMPO167,
        CAMPO168,
        CAMPO169,
        CAMPO170,
        CAMPO171,
        CAMPO172,
        CAMPO173,
        CAMPO174,
        CAMPO175,
        CAMPO176,
        CAMPO177,
        CAMPO178,
        CAMPO179,
        CAMPO180,
        CAMPO181
    )
VALUES
    (
        V_CAMPO1,
        V_CAMPO2,
        V_CAMPO3,
        V_CAMPO4,
        V_CAMPO5,
        V_CAMPO6,
        V_CAMPO7,
        V_CAMPO8,
        V_CAMPO9,
        V_CAMPO10,
        V_CAMPO11,
        V_CAMPO12,
        V_CAMPO13,
        V_CAMPO14,
        V_CAMPO15,
        V_CAMPO16,
        V_CAMPO17,
        V_CAMPO18,
        V_CAMPO19,
        V_CAMPO20,
        V_CAMPO21,
        V_CAMPO22,
        V_CAMPO23,
        V_CAMPO24,
        V_CAMPO25,
        V_CAMPO26,
        V_CAMPO27,
        V_CAMPO28,
        V_CAMPO29,
        V_CAMPO30,
        V_CAMPO31,
        V_CAMPO32,
        V_CAMPO33,
        V_CAMPO34,
        V_CAMPO35,
        V_CAMPO36,
        V_CAMPO37,
        V_CAMPO38,
        V_CAMPO39,
        V_CAMPO40,
        V_CAMPO41,
        V_CAMPO42,
        V_CAMPO43,
        V_CAMPO44,
        V_CAMPO45,
        V_CAMPO46,
        V_CAMPO47,
        V_CAMPO48,
        V_CAMPO49,
        V_CAMPO50,
        V_CAMPO51,
        V_CAMPO52,
        V_CAMPO53,
        V_CAMPO54,
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
        V_CAMPO79,
        V_CAMPO80,
        V_CAMPO81,
        V_CAMPO82,
        V_CAMPO83,
        V_CAMPO84,
        V_CAMPO85,
        V_CAMPO86,
        V_CAMPO87,
        V_CAMPO88,
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
        V_CAMPO99,
        V_CAMPO100,
        V_CAMPO101,
        V_CAMPO102,
        V_CAMPO103,
        V_CAMPO104,
        V_CAMPO105,
        V_CAMPO106,
        V_CAMPO107,
        V_CAMPO108,
        V_CAMPO109,
        V_CAMPO110,
        V_CAMPO111,
        V_CAMPO112,
        V_CAMPO113,
        V_CAMPO114,
        V_CAMPO115,
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
        V_CAMPO132,
        V_CAMPO133,
        V_CAMPO134,
        V_CAMPO135,
        V_CAMPO136,
        V_CAMPO137,
        V_CAMPO138,
        V_CAMPO139,
        V_CAMPO140,
        V_CAMPO141,
        V_CAMPO142,
        V_CAMPO143,
        V_CAMPO144,
        V_CAMPO145,
        V_CAMPO146,
        V_CAMPO147,
        V_CAMPO148,
        V_CAMPO149,
        V_CAMPO150,
        V_CAMPO151,
        V_CAMPO152,
        V_CAMPO153,
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
        V_CAMPO174,
        V_CAMPO175,
        V_CAMPO176,
        V_CAMPO177,
        V_CAMPO178,
        V_CAMPO179,
        V_CAMPO180,
        V_CAMPO181
    );

EXCEPTION WHEN OTHERS THEN NULL;

END;

COMMIT;

END PRC_INSERTA_T_TMP_008;