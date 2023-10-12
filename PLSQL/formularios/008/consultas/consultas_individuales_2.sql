FN_IDADE (E.DT_NASCIMENTO)

select FN_IDADE(DT_NASCIMENTO),  from paciente

select FN_IDADE(DT_NASCIMENTO), 
-- Calcular la edad de un paciente y si es de 0 a 18 o mayor a 60 salga grupo prioritario
case when FN_IDADE(DT_NASCIMENTO) between 0 and 18 then 'Grupo Prioritario'
when FN_IDADE(DT_NASCIMENTO) > 60 then 'Grupo Prioritario'
else 'No es Grupo Prioritario' end GRUPO_PRIORITARIO 
from paciente
where FN_IDADE(DT_NASCIMENTO) 
