EXECUTE dbamv.pkg_mv2000.atribui_empresa(1);

BEGIN
  dbamv.pkg_mv2000.atribui_empresa(1);
END;


update paciente 
set
    --cd_identificador_pessoa = '0602268500',
    cd_identificador_pessoa = '0604312801',
    ds_primeiro_sobrenome = 'Logroño',
    ds_segundo_sobrenome = 'Trujillo',
    ds_primeiro_nome = 'Emill',
    ds_segundo_nome = 'Jossue',
    nm_paciente = 'Emill Jossue Logroño Trujillo',
    nm_social_paciente = 'Emill Jossue Logroño Trujillo'
where
    cd_paciente = 982961
    
  

update paciente 
set
    ds_primeiro_sobrenome = 'Logroño',
    ds_segundo_sobrenome = 'Trujillo',
    ds_primeiro_nome = 'Emill',
    ds_segundo_nome = 'Jossue',
    nm_paciente = 'Emill Jossue Logroño Trujillo',
    nm_social_paciente = 'Emill Jossue Logroño Trujillo'
where
    cd_paciente = 982961
    
    
select * from paciente where paciente.cd_paciente = 982961


select
    paciente.nm_paciente nm_paciente,
    paciente.cd_identificador_pessoa Cd_identificador_pessoa,
    paciente.ds_primeiro_sobrenome ds_primeiro_sobrenome,
    paciente.ds_segundo_sobrenome ds_segundo_sobrenome,
    paciente.ds_primeiro_nome ds_primeiro_nome,
    paciente.ds_segundo_nome ds_segundo_nome,
    paciente.cd_paciente cd_paciente,
    atendime.cd_atendimento cd_atendimento,
    paciente.nm_social_paciente nm_social_paciente
from
    paciente
    inner join atendime on paciente.cd_paciente = atendime.cd_paciente
where
    atendime.cd_atendimento = 93217
    
    
select * from paciente where paciente.cd_identificador_pessoa = '0604312801'
select * from paciente where paciente.cd_identificador_pessoa = '0602268500'
select * from paciente where paciente.cd_identificador_pessoa = '0201379492'


/* {
  "nm_paciente": "Emill Jossue Logroño Trujillo",
  "ds_primeiro_sobrenome": "Logroño",
  "ds_segundo_sobrenome": "Trujillo",
  "ds_primeiro_nome": "Emill",
  "ds_segundo_nome": "Jossue",
  "nm_social_paciente": "Emill Jossue Logroño Trujillo"
} */


-- 982961

select * from hmetro.PACIENTE_AUD$ where cd_paciente_old = 982961
