select
    a.fecha_hora,
    a.medicina
from
    dbamv.v_editor_adm_medicamentos a
where
    cd_atendimento = 10090 -- numero de atendimento