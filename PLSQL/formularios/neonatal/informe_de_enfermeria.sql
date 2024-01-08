select
    to_char(a.hr_pre_med, 'dd/mm/yyyy hh24:mi') hr_pre_med,
    a.ds_evolucao,
    p.nm_prestador responsable,
    a.cd_pre_med,
    a.cd_atendimento
from
    pre_med a,
    pw_documento_clinico b,
    prestador p
where
    a.ds_evolucao is not null
    and tp_pre_med = 'E'
    and a.cd_documento_clinico = b.cd_documento_clinico
    and b.tp_status = 'FECHADO'
    and a.cd_atendimento = 10090
    and a.cd_prestador = p.cd_prestador
order by
    a.hr_pre_med