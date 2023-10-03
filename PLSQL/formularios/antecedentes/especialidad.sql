select * from par_med order by cd_atendimento desc

select  e.nm_prestador  || ' - ' || d.ds_especialid medico_interconsultado
from par_med b, especialid d, prestador e, prestador f
where b.cd_atendimento = 97328
and b.cd_especialid = d.cd_especialid and b.cd_prestador_requisitado = e.cd_prestador
and b.cd_prestador = f.cd_prestador

--and b.cd_par_med='&<485430:DATOS_DOCTOR156___V35>'

select NM_PACIENTE--p.ds_primeiro_sobrenome||' '|| p.ds_segundo_sobrenome||' '||p.ds_primeiro_nome||' '||p.ds_segundo_nome 
from paciente p, atendime a
where p.cd_paciente=a.cd_paciente and
a.cd_atendimento=97328

select nm_paciente, ds_primeiro_sobrenome, ds_segundo_sobrenome, ds_primeiro_nome, ds_segundo_nome from paciente where paciente.ds_primeiro_sobrenome = 'SALGADO' AND paciente.ds_SEGUNDO_sobrenome = 'DIAZ'

select ds_primeiro_sobrenome from paciente
