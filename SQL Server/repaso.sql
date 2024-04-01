select * from atendime

select * from convenio

select atendime.cd_atendimento, paciente.nm_paciente, convenio.nm_convenio, prestador.nm_prestador, itcoleta_sinal_vital.valor, leito.cd_leito, sinal_vital.ds_sinal_vital
from atendime 
inner join convenio on atendime.cd_convenio = convenio.cd_convenio
inner join paciente on atendime.cd_paciente = paciente.cd_paciente
inner join prestador on atendime.cd_prestador = prestador.cd_prestador
inner join leito on atendime.cd_leito = leito.cd_leito
inner join coleta_sinal_vital on atendime.cd_atendimento = coleta_sinal_vital.cd_atendimento
inner join itcoleta_sinal_vital on coleta_sinal_vital.cd_coleta_sinal_vital = itcoleta_sinal_vital.cd_coleta_sinal_vital
inner join sinal_vital on sinal_vital.cd_sinal_vital = itcoleta_sinal_vital.cd_sinal_vital
where atendime.cd_atendimento = 93217


select temp.estado
from (select * from formularioterapiarespiratoria terapia where terapia.id = 101) temp
select count(*),
convenio.nm_convenio
from convenio

group by convenio.nm_convenio
having count(*) > 0





select * from sinal_vital


select * from itcoleta_sinal_vital h
select * from sinal_vital
select * from coleta_sinal_vitali

select sum(itcoleta_sinal_vital.valor), sinal_vital.ds_sinal_vital, sinal_vital.cd_sinal_vital, paciente.nm_paciente --atendime.cd_atendimento, paciente.nm_paciente, convenio.nm_convenio, prestador.nm_prestador, itcoleta_sinal_vital.valor, leito.cd_leito, sinal_vital.ds_sinal_vital
from atendime 
inner join convenio on atendime.cd_convenio = convenio.cd_convenio
inner join paciente on atendime.cd_paciente = paciente.cd_paciente
inner join prestador on atendime.cd_prestador = prestador.cd_prestador
inner join leito on atendime.cd_leito = leito.cd_leito
inner join coleta_sinal_vital on atendime.cd_atendimento = coleta_sinal_vital.cd_atendimento
inner join itcoleta_sinal_vital on coleta_sinal_vital.cd_coleta_sinal_vital = itcoleta_sinal_vital.cd_coleta_sinal_vital
inner join sinal_vital on sinal_vital.cd_sinal_vital = itcoleta_sinal_vital.cd_sinal_vital
where atendime.cd_atendimento = 93217 and sinal_vital.cd_sinal_vital in (106, 109, 43, 4,3)
group by sinal_vital.ds_sinal_vital, sinal_vital.cd_sinal_vital, paciente.nm_paciente
having sum(itcoleta_sinal_vital.valor) > 10


select sum(itcoleta_sinal_vital.valor), sinal_vital.ds_sinal_vital, sinal_vital.cd_sinal_vital, paciente.nm_paciente --atendime.cd_atendimento, paciente.nm_paciente, convenio.nm_convenio, prestador.nm_prestador, itcoleta_sinal_vital.valor, leito.cd_leito, sinal_vital.ds_sinal_vital
from atendime 
inner join convenio on atendime.cd_convenio = convenio.cd_convenio
inner join paciente on atendime.cd_paciente = paciente.cd_paciente
inner join prestador on atendime.cd_prestador = prestador.cd_prestador
inner join leito on atendime.cd_leito = leito.cd_leito
inner join coleta_sinal_vital on atendime.cd_atendimento = coleta_sinal_vital.cd_atendimento
inner join itcoleta_sinal_vital on coleta_sinal_vital.cd_coleta_sinal_vital = itcoleta_sinal_vital.cd_coleta_sinal_vital
inner join sinal_vital on sinal_vital.cd_sinal_vital = itcoleta_sinal_vital.cd_sinal_vital
where atendime.cd_atendimento = 93217 and sinal_vital.cd_sinal_vital in (select cd_sinal_vital from sinal_vital signo_vital where signo_vital.cd_sinal_vital in (1,2,3))
group by sinal_vital.ds_sinal_vital, sinal_vital.cd_sinal_vital, paciente.nm_paciente
having sum(itcoleta_sinal_vital.valor) > 10



select hr_atendimento from atendime order by hr_atendimento desc



select * from sinal_vital
select cd_sinal_vital from sinal_vital signo_vital where signo_vital.cd_sinal_vital in (1,2,3)