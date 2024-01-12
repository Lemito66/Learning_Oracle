select
    a.fecha_hora,
    a.medicina
from
    dbamv.v_editor_adm_medicamentos a
where
    FUN_VALIDA_FECHA_HORA (TO_DATE(a.fecha_hora, 'dd/mm/yyyy hh24:mi:ss'), sysdate) = 1 and
    cd_atendimento = 10090 -- numero de atendimento