-- temperatura
select
    editor_custom.fun_signos_vitales_u_t (654, 'TEMPERATURA')
from
    dual
    -- FRECUENCIA CARDIACA
select
    editor_custom.fun_signos_vitales_u_t (654, 'FRECUENCIA CARDIACA')
from
    dual
    -- T/A
SELECT
    editor_custom.fun_signos_vitales_u (654, 4) || " " || fun_signos_vitales_u (654, 5)
from
    dual 

select 'hola' || ' ' || 'mundo' from dual