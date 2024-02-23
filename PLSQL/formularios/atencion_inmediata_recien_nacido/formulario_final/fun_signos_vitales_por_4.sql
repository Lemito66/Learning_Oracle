create
or replace function fun_signos_vitales_4 (vAtendimento NUMBER, vSigno NUMBER) return NVARCHAR2 IS cursor data is
select
    -- rownum,
    i.data_coleta,
    h.valor
from
    dbamv.itcoleta_sinal_vital h,
    dbamv.coleta_sinal_vital i,
    dbamv.sinal_vital j,
    pw_documento_clinico pw
where
    i.cd_atendimento = 19652
    and h.cd_coleta_sinal_vital = i.cd_coleta_sinal_vital
    and h.cd_sinal_vital = j.cd_sinal_vital
    and h.cd_sinal_vital in 7
    and --4
    h.valor is not null
    and i.cd_documento_clinico = pw.cd_documento_clinico
    and pw.tp_status = 'FECHADO'
order by
    i.data_coleta desc
FETCH FIRST
    4 ROWS ONLY;

    v_resultado NVARCHAR2(4000);

    -- variables para almacenar los valores de los signos vitales
    v_fecha dbamv.coleta_sinal_vital.data_coleta%TYPE;
    v_valor dbamv.itcoleta_sinal_vital.valor%TYPE;

    -- variable para el contador 
    v_contador NUMBER := 1;

BEGIN
    v_resultado := '';
     
    open data;

    loop
        fetch data into v_fecha, v_valor;
        exit when data%NOTFOUND;
        v_resultado := v_resultado || v_contador || '. ' || 'Fecha: ' || v_fecha || ' - Valor: ' || v_valor || chr(10);
        v_contador := v_contador + 1;
    end loop;

    close data;

    return v_resultado;
END fun_signos_vitales_4;