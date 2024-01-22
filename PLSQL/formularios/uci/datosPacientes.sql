select
    'HOSPITAL METROPOLITANO' institucion_sistema,
    '065472' unicodigo,
    'HOSPITAL METROPOLITANO' establecimiento_salud,
    NVL(
        p.CD_IDENTIFICADOR_PESSOA,
        p.NR_DOCUMENTO_ESTRANGEIRO
    ) numero_historia_clinica,
    a.cd_atendimento numero_archivo,
    p.DS_PRIMEIRO_SOBRENOME primer_apellido,
    p.DS_SEGUNDO_SOBRENOME segundo_apellido,
    p.DS_PRIMEIRO_NOME primer_nombre,
    p.DS_SEGUNDO_NOME segundo_nombre,
    DECODE(p.TP_SEXO, 'M', 'MASCULINO', 'FEMENINO') sexo,
    fn_idade (p.dt_nascimento, 'a "años", m "meses", d "días"') edad_paciente,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 9) talla,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 8) peso,
    fun_signos_vitales_imc (a.cd_atendimento) imc,
    null peso_ideal, -- por confirmar
    null superficie_corporal, -- por confirmar
    fun_diagnosticos_ingreso (a.cd_atendimento) diagnostico_ingreso,
    fun_diagnostico_definitivo (a.cd_atendimento) diagnostico_definivo,
    fun_alergias_linea (a.cd_atendimento) alergias,
    p.TP_SANGUINEO grupo_sanguineo
from
    paciente p,
    atendime a
where
    a.cd_paciente = p.cd_paciente
    and a.cd_atendimento = 117598
