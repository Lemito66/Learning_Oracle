declare cursor datos is
select
    c4
from
    TEMPORAL_DM t
where
    c4 is not null;

v_dpto VARCHAR2(4000);

v_especialidad VARCHAR2(4000);

begin for i in datos
loop
begin
select
    c.ds_cbos dpto,
    e.ds_especialid especialidad into v_dpto,
    v_especialidad
from
    prestador p,
    esp_med em,
    especialid e,
    cbo c
where
    p.cd_prestador = em.cd_prestador
    and em.cd_especialid = e.cd_especialid
    and e.cd_cbos = c.cd_cbos
    and em.sn_especial_principal = 'S'
    and
    --p.dt_inativacao is null and
    P.TP_SITUACAO = 'A'
    AND trim(p.nm_prestador) = trim(i.c4);

exception when others then v_dpto := NULL;

v_especialidad := NULL;

end;

begin
update TEMPORAL_DM
set
    c5 = v_dpto,
    c6 = v_especialidad
where
    trim(c4) = trim(i.c4);

exception when others then null;

end;

end
loop;

end;