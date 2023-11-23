create
or replace function fun_medicacion_habitual (vPaciente number) return number is vResultado number;

begin
begin
select
  count(*) into vResultado
from
  T_ANTECEDENTE_PERS_FAM t
where
  t.cd_atendimento = vPaciente -- numero de atencion
  and t.medicina is not null;

exception when others then vResultado := 0;

end;

return vResultado;

end fun_medicacion_habitual;
/
