select
    paciente.nm_paciente nm_paciente,
    paciente.cd_identificador_pessoa Cd_identificador_pessoa,
    paciente.ds_primeiro_sobrenome ds_primeiro_sobrenome,
    paciente.ds_segundo_sobrenome ds_segundo_sobrenome,
    paciente.ds_primeiro_nome ds_primeiro_nome,
    paciente.ds_segundo_nome ds_segundo_nome,
    paciente.cd_paciente cd_paciente,
    atendime.cd_atendimento cd_atendimento
from
    paciente
    inner join atendime on paciente.cd_paciente = atendime.cd_paciente
where
    atendime.cd_atendimento = 93217



/* Hacer la actualización de paciente con inner join de atendimiento de nombre, cdecula, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido */

update paciente 
set
    cd_identificador_pessoa = '0604312801',
    ds_primeiro_sobrenome = 'Logroño',
    ds_segundo_sobrenome = 'Trujillo',
    ds_primeiro_nome = 'Emill',
    ds_segundo_nome = 'Jossue',
    nm_paciente = 'Emill Jossue Logroño Trujillo'
where
    cd_paciente = 982961