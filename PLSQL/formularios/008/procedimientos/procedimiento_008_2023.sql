CREATE
OR REPLACE PROCEDURE PRC_INSERTA_T_TMP_008_2023 (VATENDIMENTO NUMBER) IS V_CAMPO1 VARCHAR2(50);

V_CAMPO2 VARCHAR2(50);

V_CAMPO3 VARCHAR2(50);

V_CAMPO4 VARCHAR2(50);

V_CAMPO5 VARCHAR2(50);

V_CAMPO6 VARCHAR2(50);

V_CAMPO7 VARCHAR2(50);

V_CAMPO8 VARCHAR2(50);

V_CAMPO9 VARCHAR2(50);

V_CAMPO10 VARCHAR2(50);

V_CAMPO11 VARCHAR2(50);

V_CAMPO12 VARCHAR2(50);

V_CAMPO13 VARCHAR2(20);

V_CAMPO14 VARCHAR2(10);

V_CAMPO15 VARCHAR2(50);

V_CAMPO16 VARCHAR2(50);

V_CAMPO17 VARCHAR2(50);

V_CAMPO18 VARCHAR2(50);

V_CAMPO19 VARCHAR2(50);

V_CAMPO20 VARCHAR2(50);

V_CAMPO21 VARCHAR2(20);

V_CAMPO22 VARCHAR2(20);

V_CAMPO23 CLOB;

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

V_CAMPO48 VARCHAR2(50);

V_CAMPO49 VARCHAR2(10);

V_CAMPO50 VARCHAR2(10);

V_CAMPO51 VARCHAR2(10);

V_CAMPO52 CLOB;

V_CAMPO53 VARCHAR2(10);

V_CAMPO54 VARCHAR2(10);

V_CAMPO55 VARCHAR2(10);

V_CAMPO56 VARCHAR2(10);

V_CAMPO57 VARCHAR2(30);

V_CAMPO58 VARCHAR2(50);

V_CAMPO59 VARCHAR2(500);

V_CAMPO60 VARCHAR2(500);

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

V_CAMPO80 VARCHAR2(10);

V_CAMPO81 VARCHAR2(10);

V_CAMPO82 VARCHAR2(10);

V_CAMPO83 VARCHAR2(10);

V_CAMPO84 VARCHAR2(10);

V_CAMPO85 VARCHAR2(10);

V_CAMPO86 CLOB;

V_CAMPO87 VARCHAR2(10);

V_CAMPO88 VARCHAR2(10);

V_CAMPO89 VARCHAR2(10);

V_CAMPO90 VARCHAR2(10);

V_CAMPO91 VARCHAR2(10);

V_CAMPO92 VARCHAR2(10);

V_CAMPO93 VARCHAR2(10);

V_CAMPO94 VARCHAR2(10);

V_CAMPO95 VARCHAR2(10);

V_CAMPO96 VARCHAR2(10);

V_CAMPO97 VARCHAR2(10);

V_CAMPO98 VARCHAR2(10);

V_CAMPO99 CLOB;

V_CAMPO100 CLOB;

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

V_CAMPO120 VARCHAR2(10);

V_CAMPO121 VARCHAR2(10);

V_CAMPO122 VARCHAR2(10);

V_CAMPO123 VARCHAR2(10);

V_CAMPO124 VARCHAR2(10);

V_CAMPO125 VARCHAR2(10);

V_CAMPO126 VARCHAR2(10);

V_CAMPO127 VARCHAR2(10);

V_CAMPO128 VARCHAR2(10);

V_CAMPO129 VARCHAR2(10);

V_CAMPO130 VARCHAR2(10);

V_CAMPO131 CLOB;

V_CAMPO132 CLOB;

V_CAMPO133 VARCHAR2(10);

V_CAMPO134 VARCHAR2(50);

V_CAMPO135 VARCHAR2(50);

V_CAMPO136 VARCHAR2(50);

V_CAMPO137 VARCHAR2(50);

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

V_CAMPO153 CLOB;

V_CAMPO154 VARCHAR2(50);

V_CAMPO155 VARCHAR2(50);

V_CAMPO156 VARCHAR2(10);

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

V_CAMPO170 CLOB;

V_CAMPO171 CLOB;

V_CAMPO172 CLOB;

V_CAMPO173 CLOB;

V_CAMPO174 CLOB;

V_CAMPO175 VARCHAR2(50);

V_CAMPO176 VARCHAR2(500);

V_CAMPO177 VARCHAR2(50);

V_CAMPO178 VARCHAR2(500);

V_CAMPO179 VARCHAR2(50);

BEGIN
-- ELIMINA EL REGISTRO EXISTENTE
BEGIN DELETE T_TMP_008
WHERE
    CAMPO7 = VATENDIMENTO;

EXCEPTION WHEN OTHERS THEN NULL;

END;

COMMIT;

-- CONSULTA CAMPOS DEL PACIENTE Y ATENCIÓN
BEGIN
SELECT
    'HOSPITAL METROPOLITANO' INSTITUCION_DEL_SISTEMA, --1
    '065472' UNICODIGO, --2
    'HOSPITAL METROPOLITANO' INSTITUCION_DEL_SISTEMA, --3
    DECODE(A.TP_ATENDIMENTO, 'U', 'EMERGENCIA', '') UNIDAD_OPERATIVA,
    NVL(
        E.CD_IDENTIFICADOR_PESSOA,
        E.NR_DOCUMENTO_ESTRANGEIRO
    ) CEDULA_CIUDADANIA_PACIENTE, -- 4
    A.CD_ATENDIMENTO NUMERO_DE_ARCHIVO, -- 5
    TO_CHAR(A.HR_ATENDIMENTO, 'dd/mm/yyyy') FECHA_ADMISIÓN, -- 6
    p.nm_usuario ADMISIONISTA, -- 7
    E.DS_PRIMEIRO_SOBRENOME APELLIDO_PATERNO_PACIENTE, --8
    E.DS_SEGUNDO_SOBRENOME APELLIDO_MATERNO_PACIENTE, -- 9
    E.DS_PRIMEIRO_NOME PRIMER_NOMBRE_PACIENTE, -- 10
    E.DS_SEGUNDO_NOME SEGUNDO_NOMBRE_PACIENTE, -- 11
    CASE
        WHEN E.CD_IDENTIFICADOR_PESSOA IS NOT NULL THEN 'CÉDULA'
        WHEN E.NR_DOCUMENTO_ESTRANGEIRO IS NOT NULL THEN 'PASAPORTE'
        ELSE NULL -- Otra opción si ninguno de los campos tiene valor
    END AS CEDULA_CIUDADANIA_PACIENTE, -- 12
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
    ) ESTADO_CIVIL_PACIENTE, -- 13
    DECODE(E.TP_SEXO, 'M', 'MASCULINO', ' FEMENINO') SEXO_PACIENTE, -- 14
    E.NR_FONE TELEFONO_FIJO, -- 15
    E.NR_CELULAR TELEFONO_CELULAR, -- 16
    TO_CHAR(E.DT_NASCIMENTO, 'dd/mm/yyyy') FECHA_NACIMIENTO_PACIENTE, -- 17
    F.NM_CIDADE LUGAR_NACIMIENTO_PACIENTE, -- 18
    H.DS_CIDADANIA NACIONALIDAD_PACIENTE, -- 19
    FN_IDADE (E.DT_NASCIMENTO, 'a "años", m "meses", d "días"') EDAD_PACIENTE, -- 20
    case when FN_IDADE(E.DT_NASCIMENTO) between 0 and 18 then 'X' 
    when FN_IDADE(E.DT_NASCIMENTO) >= 60 then 'X'
    else null end GRUPO_PRIORITARIO_SI,--21
    case when FN_IDADE(E.DT_NASCIMENTO) between 0 and 18 then null 
    when FN_IDADE(E.DT_NASCIMENTO) >= 60 then null
    else 'X' end GRUPO_PRIORITARIO_NO,--22
    case when FN_IDADE(E.DT_NASCIMENTO) between 0 and 18 then 'MENOR DE EDAD'
    when FN_IDADE(E.DT_NASCIMENTO) >= 60 then 'ADULTO MAYOR'
    else 'NO ES PRIORITARIO' end ESPECIFIQUE,-- 23
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
    ) GRUPO_CULTURAL_PACIENTE, -- 24
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
    ) GRUPO_CULTURAL_PACIENTE, -- 25
    null PUEBLOS, -- 26
    I.DS_GRAU_INS INSTRUCCION_PACIENTE, -- 27
    null ESTADO_NIVEL_DE_EDUCACION, -- 28
    E.DS_TRABALHO EMPRESA_TRABAJO_PACIENTE, -- 29
    J.NM_PROFISSAO OCUPACION_PACIENTE, -- 30
    K.NM_CONVENIO CONVENIO_PACIENTE, -- 31
    G.NM_ESTADO PROVINCIA_PACIENTE, -- 32
    F.NM_CIDADE CANTON_PACIENTE, -- 33
    E.NM_BAIRRO PARROQUIA_PACIENTE, -- 34
    NULL BARRIO_PACIENTE, -- 35
    E.DS_ENDERECO DIRECCION_RESIDENCIAL_PACIENTE, -- 36
    null REFERENCIA, -- 37
    M.NM_RESPONSAVEL AVISAR_A_PACIENTE, -- 38
    N.DS_TIP_PAREN PARIENTE_PACIENTE, -- 39
    M.DS_ENDERECO DIRECCION_PARIENTE_PACIENTE, -- 40
    M.NR_FONE TELEFONO_PACIENTE_PACIENTE, -- 41
    O.DS_MEIO_TRANSPORTE LLEGADA_PACIENTE, -- 42
    -- 45 No hay que traer este campo
    null INSTITUCIONENTREGA_AL_PACIENTE, -- 46
    M.NR_FONE TELEFONO_PACIENTE_PACIENTE, -- 47
    E.TP_SANGUINEO GRUPO_SANGUINEO_PACIENTE -- 57
    /* INTO 
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
    V_CAMPO46,
    V_CAMPO47,
    V_CAMPO57 */
FROM
    ATENDIME A, -- tabla de la atención
    MULTI_EMPRESAS B, -- tabla de la empresa, aquí está hospital metroplitano
    CIDADE C, -- Ciudades
    ESTADO D, -- Provincias
    PACIENTE E, -- Datos del paciente
    CIDADE F, -- Ciudades
    ESTADO G, -- Provincia
    CIDADANIAS H, -- Nacionalidad
    GRAU_INS I, -- Grado de instrucción, ingeniero, bachiller, etc.
    PROFISSAO J, -- profesiones
    CONVENIO K, -- convenios por seguro médico
    LOC_PROCED L, -- por confirmar
    RESPONSA M, -- Responsable
    TIP_PAREN N, -- tipo de parentesco, madre,padre,chofe,amigo, etc.
    MEIO_TRANSPORTE O, -- En que medio de transporte llego el paciente.
    USUARIOS P -- tabla de usuarios
    --T_EMERGENCIA P -- tabla de emergencia
WHERE
    A.CD_MULTI_EMPRESA = B.CD_MULTI_EMPRESA (+)
    AND B.CD_CIDADE = C.CD_CIDADE (+)
    AND A.CD_ATENDIMENTO = VATENDIMENTO--96370--96372--98699
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
    AND A.CD_MEIO_TRANSPORTE = O.CD_MEIO_TRANSPORTE (+)
    AND A.NM_USUARIO = p.cd_usuario;

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- CONSULTA LA FECHA DE LA ATENCIÓN
BEGIN
SELECT
    TO_CHAR(A.FECHA_REGISTRO, 'dd/mm/yyyy hh24:mi') HORA_ATENCION INTO V_CAMPO48
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
    DECODE(A.ESTABLE, 'true', 'X', null) ESTABLE, -- 49
    DECODE(A.INESTABLE, 'true', 'X', null) INESTABLE, -- 50
    DECODE(A.Fallecido, 'true', 'X', null) FALLECIDO, -- 51
    A.DESCRIPCION_OTRO_MOTIVO DESCRIPCION_OTRO_MOTIVO, -- 52
    DECODE(A.TIPO_MOTIVO_ATENCION, 'TRAUMA', 'true', 'false') TRAUMA_X, -- 53
    DECODE(
        A.TIPO_MOTIVO_ATENCION,
        'CAUSA CLÍNICA',
        'true',
        'false'
    ) CAUSA_CLINICA_X, -- 54
    DECODE(
        A.TIPO_MOTIVO_ATENCION,
        'CAUSA G. OBSTÉTRICA',
        'true',
        'false'
    ) CAUSA_OBSTETRICA_X, --55
    DECODE(
        A.TIPO_MOTIVO_ATENCION,
        'CAUSA QUIRÚRGICA',
        'true',
        'false'
    ) CAUSA_QUIRURGICA_X, --56
    A.DETALLE_ENFERMEDAD_ACTUAL ENFERMEDAD_ACTUAL, -- 100
    -- DATOS GINECOLOGICOS
    A.GESTAS, -- 134
    A.PARTOS, -- 135
    A.ABORTOS, -- 136
    A.CESAREAS, -- 137
    A.FUM, -- 138
    A.SEMANAS_GESTACION, -- 139
    A.MOVIMIENTO, -- 140
    A.FRECUENCIA_FETAL, -- 141
    A.MEMBRANAS_ROTAS, -- 142
    A.TIEMPO, -- 143
    A.ALTURA_UTERINA, -- 144
    A.PRESENTACION, -- 145
    A.DILATACION, -- 146
    A.BORRAMIENTO, -- 147
    A.PLANO, -- 148,
    A.pelvis_viable, -- 149
    A.SANGRADO_VAGINAL, -- 150
    A.CONTRACCIONES, -- 151
    A.score_mama, -- 152
    A.OBSERVACIONES_OTRO_EXAMEN OBSERVACIONES_OTRO_EXAMEN, -- 153 
    -- Fecha y hora actual
    TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI') FECHA_HORA_ACTUAL, -- 175  
    U.NM_USUARIO USUARIO_CREA,-- 176 
    U.CD_IDENTIFICADOR_PESSOA CODIGO_CREA,-- 177 
    A.FUENTE_INFORMACION -- Es el campo 45
    
    INTO 
    V_CAMPO49,
    V_CAMPO50,
    V_CAMPO51,
    V_CAMPO52,
    V_CAMPO53,
    V_CAMPO54,
    V_CAMPO55,
    V_CAMPO56,
    V_CAMPO57,
    V_CAMPO100,
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
    V_CAMPO175
    V_CAMPO176,
    V_CAMPO177,
    V_CAMPO45
FROM
    T_EMERGENCIA A,
    USUARIOS U
WHERE
    A.CD_ATENDIMENTO = VATENDIMENTO--79919--96372--96370--VATENDIMENTO
    AND TRIM(A.USUARIO) = U.CD_USUARIO
    AND A.CD_ULTIMO_REGISTRO IN (
        SELECT
            MAX(B.CD_ULTIMO_REGISTRO)
        FROM
            T_EMERGENCIA B
        WHERE
            B.CD_ATENDIMENTO = VATENDIMENTO--79919--654--96372--96370--VATENDIMENTO
    );

EXCEPTION WHEN OTHERS THEN NULL;

END;

-- Se elimino campos formularios

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

END PRC_INSERTA_T_TMP_008_2023;