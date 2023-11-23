create
or replace function fun_discapacidad (vPaciente number) return number is vResultado number;

begin
begin
select
  count(*) into vResultado
from
  paciente p
where
  p.cd_condicao_especial is not null
  and p.cd_paciente = vPaciente;

exception when others then vResultado := 0;

end;

return vResultado;

end fun_discapacidad;