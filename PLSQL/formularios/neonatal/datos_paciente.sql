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
    fn_idade (p.dt_nascimento, 'a "años", m "meses", d "días", h "horas"') edad_paciente,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 86) frecuencia_respiratoria,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 47) frecuencia_cardiaca,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 4) presion_arterial_sistolica,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 5) presion_arterial_diastolica,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 6) presion_arterial_media,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 59) temperatura,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 7) saturacion_oxigeno,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 41) llenado_capilar,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 11) presion_venosa_central,
    FUN_SIGNOS_VITALES_p (a.cd_atendimento, 34) peso_al_nacer,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 34) peso_diario,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 34) - FUN_SIGNOS_VITALES_p (a.cd_atendimento, 34) peso_diferencial,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 64) perimetro_cefalico,
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 9) talla,
    null perimetro_abdominal,
    null peso_ideal, -- por confirmar
    FUN_SIGNOS_VITALES_U (a.cd_atendimento, 96) superficie_corporal,
    trunc(sysdate) fecha_actual,
    fun_alergias_linea (a.cd_atendimento) alergias,
    p.TP_SANGUINEO grupo_sanguineo,
    trunc(sysdate) - trunc(a.dt_atendimento) dias_de_hospitalizacion
from
    paciente p,
    atendime a
where
    a.cd_paciente = p.cd_paciente
    and a.cd_atendimento = 117598
