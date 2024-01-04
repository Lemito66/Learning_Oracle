select
    i.data_coleta fecha_toma,
    j.ds_sinal_vital signo_vital,
    h.valor
from
    dbamv.itcoleta_sinal_vital h,
    dbamv.coleta_sinal_vital i,
    dbamv.sinal_vital j,
    pw_documento_clinico pw
where
    i.cd_atendimento = 117598 -- numero de atendimento
    and h.cd_coleta_sinal_vital = i.cd_coleta_sinal_vital
    and h.cd_sinal_vital = j.cd_sinal_vital
    and h.valor is not null
    and i.cd_documento_clinico = pw.cd_documento_clinico
    and pw.tp_status = 'FECHADO'
    and j.cd_sinal_vital in (
        59, -- Temperatura
        4, -- Presion arterial por confirmar
        51, -- Frecuencia respiratoria
        17 -- Glicemia capilar

    )