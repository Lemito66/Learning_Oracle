create
or replace function fun_tipificacion_sanguinea (vPaciente number) return number is vResultado number;

begin
begin
select
  count(*) into vResultado
from
  paciente p
where
  p.tp_sanguineo is not null
  and p.cd_paciente = vPaciente;
exception when others then vResultado := 0;

end;

return vResultado;

end fun_tipificacion_sanguinea;