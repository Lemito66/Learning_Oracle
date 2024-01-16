select b.cd_identificador_pessoa
from atendime a, prestador b
where a.cd_prestador=b.cd_prestador and
a.cd_atendimento=115991


select * from prestador where


select a.cd_identificador_pessoa
from prestador a,
usuarios u
where a.cd_prestador = u.cd_prestador and 
u.cd_usuario = 122979

select p.cd_identificador_pessoa from prestador p

select p.nm_prestador, p.cd_identificador_pessoa  from prestador p where p.nm_prestador like 'LOGRO%'


select r.ds_documento
from responsa r,
     tip_paren t,
     paciente p,
     atendime a,
     servico s
where r.cd_tip_paren=t.cd_tip_paren and
      r.cd_atendimento=a.cd_atendimento and
      a.cd_paciente=p.cd_paciente and
      a.cd_servico=s.cd_servico and
      a.cd_atendimento=115991
      
      
SELECT * FROM RESPONSA r where r.cd_atendimento = 115991


select * from paciente p where p.cd_identificador_pessoa = '1701912782'