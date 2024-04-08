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

-- Obtener el paciente de un atendimento
select
    paciente.nm_paciente nm_paciente,
    paciente.cd_identificador_pessoa Cd_identificador_pessoa,
    paciente.ds_primeiro_sobrenome ds_primeiro_sobrenome,
    paciente.ds_segundo_sobrenome ds_segundo_sobrenome,
    paciente.ds_primeiro_nome ds_primeiro_nome,
    paciente.ds_segundo_nome ds_segundo_nome,
    paciente.cd_paciente cd_paciente,
    atendime.cd_atendimento cd_atendimento,
    paciente.nm_social_paciente nm_social_paciente,
    paciente.dt_nascimento dt_nascimento
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


/* Tabla de auditoria */

SELECT
    auditoria.timestamp AS updatedAt,
    auditoria.cd_identificador_pessoa_new AS idPatient,
    auditoria.nm_paciente_new AS name,
    auditoria.changed_by AS changedBy
FROM
    paciente
    INNER JOIN atendime ON paciente.cd_paciente = atendime.cd_paciente
    INNER JOIN hmetro.PACIENTE_AUD$ auditoria ON auditoria.cd_paciente_old = paciente.cd_paciente
WHERE
    atendime.cd_atendimento = 93217
ORDER BY
    updatedAt DESC


/* Actualización tabla de auditoría */

UPDATE hmetro.PACIENTE_AUD$
SET changed_by = 'lemito66'
WHERE cd_paciente_old = 982961
AND timestamp = (
    SELECT timestamp
    FROM hmetro.PACIENTE_AUD$
    WHERE cd_paciente_old = 982961
    ORDER BY timestamp DESC
    FETCH FIRST 1 ROW ONLY
);