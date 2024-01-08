create
or replace function FUN_VALIDA_FECHA_HORA (vFecha DATE) return number is vFechaHoy date := to_date(
    to_char(trunc(sysdate), 'dd/mm/yyyy') || ' 07:00',
    'dd/mm/yyyy hh24:mi'
);

vFechaAyer date := to_date(
    to_char(trunc(sysdate -1), 'dd/mm/yyyy') || ' 07:00',
    'dd/mm/yyyy hh24:mi'
);

vResultado number;

begin if vFecha between vFechaAyer and vFechaHoy  then vResultado := 1;

else vResultado := 0;

end if;

--return(vResultado);
return vResultado;

end FUN_VALIDA_FECHA_HORA;