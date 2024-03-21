select
    FUN_SIGNOS_VITALES_U (atendime.CD_ATENDIMENTO, 8) Peso
from
    paciente
    inner join atendime on paciente.cd_paciente = atendime.cd_paciente
where
    atendime.cd_atendimento = 93217