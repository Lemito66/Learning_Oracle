select
    e.ds_especialid servicio_interconsultado,
    to_char(a.dt_solicitacao, 'dd/mm/yyyy hh24:mi') fecha_solicitud,
    to_char(a.dt_parecer, 'dd/mm/yyyy hh24:mi') fecha_respuesta
from
    par_med a,
    prestador b,
    prestador c,
    pw_documento_clinico pw,
    especialid e
where
    FUN_VALIDA_FECHA_HORA (a.dt_solicitacao, sysdate) = 1
    and a.cd_atendimento = 104138
    and a.cd_prestador = b.cd_prestador
    and a.cd_prestador_requisitado = c.cd_prestador
    and a.ds_situacao <> 'Cancelado'
    and a.cd_documento_clinico = pw.cd_documento_clinico
    and pw.tp_status = 'FECHADO'
    and a.cd_especialid = e.cd_especialid
order by
    a.dt_solicitacao desc;