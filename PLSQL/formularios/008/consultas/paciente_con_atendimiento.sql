SELECT FN_IDADE(PACIENTE.DT_NASCIMENTO), paciente.cd_paciente FROM PACIENTE WHERE FN_IDADE(PACIENTE.DT_NASCIMENTO) = 60

SELECT * from paciente

select FN_IDADE(PACIENTE.DT_NASCIMENTO), 
       paciente.cd_paciente, 
       atendimiento.cd_paciente, 
       paciente.DS_PRIMEIRO_NOME,
       atendimiento.cd_atendimento Atendimiento
from atendime atendimiento, paciente 
where atendimiento.cd_paciente = paciente.cd_paciente
or FN_IDADE(paciente.DT_NASCIMENTO) = 60
--or paciente.cd_paciente = 50
--and paciente.cd_paciente = 50
and FN_IDADE(paciente.DT_NASCIMENTO) = 60
