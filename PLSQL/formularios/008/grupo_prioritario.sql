select FN_IDADE(DT_NASCIMENTO), 
-- Calcular la edad de un paciente y si es de 0 a 18 o mayor a 60 salga grupo prioritario
case when FN_IDADE(DT_NASCIMENTO) between 0 and 18 then 'Grupo Prioritario'
when FN_IDADE(DT_NASCIMENTO) > 60 then 'Grupo Prioritario'
else 'No es Grupo Prioritario' end as 'Grupo Prioritario' 
from paciente