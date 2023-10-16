create or replace function FUN_EXAMEN_FISICO_008(vAtendimento NUMBER) return clob is
  cursor DATOS1 is
    select editor_custom.fun_examen_fisico(vAtendimento) datos1
    from dual;

  cursor DATOS2 is
    select editor_custom.fun_todas_escalas(vAtendimento) datos2
    from dual;

  vResultado clob;
begin
  for i in datos1 loop
    vResultado:=i.datos1||chr(10)||chr(10);
    for j in datos2 loop
      vResultado:=vResultado||'ESCALAS'||CHR(10)||j.datos2;
    end loop;
  end loop;
  return replace(upper(vResultado),chr(39),' ');
end FUN_EXAMEN_FISICO_008;
