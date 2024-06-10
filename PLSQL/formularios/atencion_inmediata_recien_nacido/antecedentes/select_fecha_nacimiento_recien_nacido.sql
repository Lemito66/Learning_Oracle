-- Inner join entre paciente y atendime
select
    paciente.*
from
    atendime
    inner join paciente on paciente.cd_paciente = atendime.cd_paciente
where
    cd_atendimento = 150916

-- Datos del recién nacido
select
    RECEM_NASCIDO.Hr_Nascimento,
    -- tomar solo la fecha
    trunc(RECEM_NASCIDO.Hr_Nascimento) fecha_nacimiento,
    -- en formato dd/mm/yyyy
    to_char(RECEM_NASCIDO.Hr_Nascimento, 'DD/MM/YYYY') fecha_nacimiento_dd_mm_yyyy,
    -- tomar solo la hora
    to_char(RECEM_NASCIDO.Hr_Nascimento, 'HH24:MI') hora_nacimiento,
from
    atendime
    inner join RECEM_NASCIDO on atendime.cd_atendimento = recem_nascido.cd_atendimento
where
    atendime.cd_atendimento = 150916


select
    *
from
    RECEM_NASCIDO
where
    cd_atendimento = 150916