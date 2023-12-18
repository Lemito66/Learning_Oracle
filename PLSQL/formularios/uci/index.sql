select
    p.nm_paciente nombre_paciente,
    NVL(
        p.CD_IDENTIFICADOR_PESSOA,
        p.NR_DOCUMENTO_ESTRANGEIRO
    ) CEDULA_CIUDADANIA_PACIENTE,
    fun_dignosticos_ingreso(117598),
    p.TP_SANGUINEO grupo_sanguineo,
    fn_idade(p.dt_nascimento, 'a "a�os", m "meses", d "d�as"') edad_paciente,
    FUN_SIGNOS_VITALES_U(a.cd_atendimento, 8) peso,
    FUN_SIGNOS_VITALES_U(a.cd_atendimento, 9) talla
from
    paciente p,
    atendime a
where
    a.cd_paciente = p.cd_paciente
    and a.cd_atendimento = 117598
