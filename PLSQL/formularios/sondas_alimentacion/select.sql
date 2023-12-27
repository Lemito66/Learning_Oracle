select
    t.cd_registro_secuencial id,
    t.fecha_inicio "Fecha Inicio",
    t.fecha_cambio "Fecha Cambio",
    t.fecha_retiro "Fecha Retiro",
    t.tipo "Tipo",
    t.localizacion "Localización",
    t.cuidados "Cuidados"
from
    T_SONDAS_ALIMENTACION t
where
    t.cd_atendimento =