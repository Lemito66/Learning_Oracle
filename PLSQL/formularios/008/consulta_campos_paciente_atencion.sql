-- CONSULTA CAMPOS DEL PACIENTE Y ATENCIÓN
BEGIN
SELECT
    B.DS_MULTI_EMPRESA INSTITUCION_DEL_SISTEMA, --1
    '065472' UNICODIGO, --2
    -- Estamos a la espera de si el establecimiento de salud es igual a institución del sistema
    DECODE(A.TP_ATENDIMENTO, 'U', 'EMERGENCIA', '') UNIDAD_OPERATIVA,
    NVL(
        E.CD_IDENTIFICADOR_PESSOA,
        E.NR_DOCUMENTO_ESTRANGEIRO
    ) CEDULA_CIUDADANIA_PACIENTE, -- 4
    A.CD_ATENDIMENTO NUMERO_DE_ARCHIVO, -- 5
    TO_CHAR(A.HR_ATENDIMENTO, 'dd/mm/yyyy') FECHA_ADMISIÓN, -- 6
    -- 7 por confirmar
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
    FN_IDADE(E.DT_NASCIMENTO,'a "años", m "meses", d "días"')EDAD_PACIENTE, -- 20
    -- 21 por preguntar
    -- 22 por preguntar
    -- 23 por preguntar
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
    DECODE(A.SN_CUSTODIA_POLICIAL, 'N', 'NO', 'SI') CUSTODIA_POLICIAL INTO 
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
    V_CAMPO40,
    V_CAMPO47,
    V_CAMPO48,
    V_CAMPO53
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
    MEIO_TRANSPORTE O -- En que medio de transporte llego el paciente.
    --T_EMERGENCIA P -- tabla de emergencia
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