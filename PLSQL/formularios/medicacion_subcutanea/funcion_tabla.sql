create
or replace function FUN_PRO_MEDI_SUBCU (vAtendimento NUMBER) return clob is cursor subcutanea is
select
    rpad(
        to_char(FECHA_REGISTRO, 'dd/mm/yyyy hh24:mi'),
        20,
        ' '
    ) Fecha,
    rpad(USUARIO, 25, ' ') Usuario,
    rpad(medicamento, 45, ' ') Medicamento,
    rpad(APLICACION, 19, ' ') Aplicacion,
    rpad(comentario, 90, ' ') Comentario
from
    T_PRO_MEDICACION_SUBCU
where
    CD_ATENDIMENTO = vAtendimento
order by
    3,
    4;

vResultado clob;

begin vResultado := rpad('FECHA', 25, ' ') || rpad('USUARIO', 25, ' ') || rpad('MEDICAMENTO', 45, ' ') || rpad('APLICACIÓN', 20, ' ') || rpad('COMENTARIO', 90, ' ') || chr(10);

for i in subcutanea
loop vResultado := vResultado || i.Fecha || i.Usuario || i.Medicamento || i.Aplicacion || i.Comentario || chr(10);

end
loop;

return (vResultado);

end FUN_PRO_MEDI_SUBCU;