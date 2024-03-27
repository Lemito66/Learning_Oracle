select
    paciente.nm_paciente nombre_completo,
    paciente.cd_identificador_pessoa cedula,
    paciente.ds_primeiro_sobrenome primer_apellido,
    paciente.ds_segundo_sobrenome segundo_apellido,
    paciente.ds_primeiro_nome primer_nombre,
    paciente.ds_segundo_nome segundo_nombre,
    paciente.cd_paciente,
    atendime.cd_atendimento
from
    paciente
    inner join atendime on paciente.cd_paciente = atendime.cd_paciente
where
    atendime.cd_atendimento = 93217