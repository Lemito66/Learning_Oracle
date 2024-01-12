select
    'SONDAS ALIMENTACION' tipo,
    to_char(a.tipo) dispositivo,
    a.fecha_inicio fecha_colocacion,
    to_char(a.localizacion) sitio_colocacion,
    trunc(a.fecha_retiro - a.fecha_inicio) * 24 dias_colocacion,
    a.fecha_cambio,
    a.fecha_retiro,
    null fecha_curacion,
    u.nm_usuario responsable
from
    t_sondas_alimentacion a,
    usuarios u
where
    FUN_VALIDA_FECHA_HORA (a.fecha_registro, sysdate) = 1 and 
    a.fecha_registro in (
        select
            max(aa.fecha_registro)
        from
            t_sondas_alimentacion aa
        where
            FUN_VALIDA_FECHA_HORA (aa.fecha_registro, sysdate) = 1 and   
            a.tipo = aa.tipo
            and a.cd_atendimento = aa.cd_atendimento
    )
    and a.cd_atendimento = 93217 -- Numero de atendimiento
    and a.usuario = u.cd_usuario
union
select
    'SONDAS VESICALES' tipo,
    to_char(b.tipo) dispositivo,
    b.fecha_inicio fecha_colocacion,
    to_char(b.localizacion) sitio_colocacion,
    trunc(b.fecha_retiro - b.fecha_inicio) * 24 dias_colocacion,
    b.fecha_cambio,
    b.fecha_retiro,
    null fecha_curacion,
    u.nm_usuario responsable
from
    t_sondas_vesicales b,
    usuarios u
where
    FUN_VALIDA_FECHA_HORA (b.fecha_registro, sysdate) = 1 and 
    b.fecha_registro in (
        select
            max(bb.fecha_registro)
        from
            t_sondas_vesicales bb
        where
            FUN_VALIDA_FECHA_HORA (bb.fecha_registro, sysdate) = 1 and 
            b.tipo = bb.tipo
            and b.cd_atendimento = bb.cd_atendimento
    )
    and b.cd_atendimento = 93217 -- Numero de atendimiento
    and trim(b.usuario) = u.cd_usuario
union
select
    'LINEAS INTRAVENOSAS' tipo,
    to_char(c.tipo) dispositivo,
    c.fecha_inicio fecha_colocacion,
    c.localizacion sitio_colocacion,
    null dias_colocacion,
    null fecha_cambio,
    null fecha_retiro,
    c.fecha_curacion,
    u.nm_usuario responsable
from
    t_lineas_intravenosas c,
    usuarios u
where
    FUN_VALIDA_FECHA_HORA (c.fecha_registro, sysdate) = 1 and
    c.fecha_registro in (
        select
            max(cc.fecha_registro)
        from
            t_lineas_intravenosas cc
        where
            FUN_VALIDA_FECHA_HORA (cc.fecha_registro, sysdate) = 1 and
            c.tipo = cc.tipo
            and c.cd_atendimento = cc.cd_atendimento
    )
    and c.cd_atendimento = 91935 -- Numero de atendimiento
    and trim(c.usuario) = u.cd_usuario