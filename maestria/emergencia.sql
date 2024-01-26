select * from paciente p where p.nm_paciente like 'ROGGIERO CUEVA I%'
select * from paciente p where p.nm_paciente like 'MOSCOSO MACIAS%'

select * from atendime a where a.hr_atendimento between '01/01/2023' and '01/01/2024' and a.cd_especialid = 60 and a.cd_atendimento = 31368
select * from atendime a where a.cd_especialid = 60 and a.cd_atendimento = 31368

select a.cd_atendimento, a.hr_atendimento, a.dt_alta,  p.nm_paciente, p.tp_sexo, p.dt_cadastro from atendime a inner join paciente p on a.cd_paciente = p.cd_paciente where  a.hr_atendimento between '01/01/2023' and '01/01/2024' and  a.cd_especialid = 60 

select * from paciente p where p.cd_paciente = 867429


select * from ESPECIALID e where e.ds_especialid like 'EME%'


select a.cd_atendimento ID_ATENCION, a.hr_atendimento INICIO_ATENCION, a.dt_alta FIN_ATENCION, p.tp_sexo GENERO, p.cd_paciente ID_PACIENTE, a.hr_alta, a.hr_alta_medica
from atendime a 
inner join paciente p on a.cd_paciente = p.cd_paciente 
inner join especialid e on a.cd_especialid = e.cd_especialid 
where  a.hr_atendimento between '01/01/2024' and '27/01/2024' --and  a.cd_especialid = 60 
and a.tp_atendimento = 'U' -- 'E'
and  a.dt_alta is null
