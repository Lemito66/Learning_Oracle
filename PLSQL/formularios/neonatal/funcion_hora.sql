create
or replace function FUN_VALIDA_FECHA_HORA (vFecha DATE) return number is vFechaHoy date := trunc(sysdate);

vFechaAyer date := trunc(sysdate -1);

vResultado number;

begin vFechaHoy := to_date(
    to_char(vFechaHoy, 'dd/mm/yyyy') || ' 07:00',
    'dd/mm/yyyy hh24:mi'
);

vFechaAyer := to_date(
    to_char(vFechaAyer, 'dd/mm/yyyy') || ' 07:00',
    'dd/mm/yyyy hh24:mi'
);

if vFecha between vFechaAyer and vFechaHoy  then vResultado := 1;

else vResultado := 0;

end if;

--return(vResultado);
return vResultado;

end FUN_VALIDA_FECHA_HORA;