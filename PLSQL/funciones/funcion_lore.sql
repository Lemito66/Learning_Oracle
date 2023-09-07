create or replace function FUN_CONTROL_HEMOGLUCOTEST_TXT(vAtendimento NUMBER) return clob is
  cursor datos is
    select rpad(i.cd_secuencial,8) cd_secuencial,
       rpad(to_char(i.fecha_registro,'dd/mm/yyyy hh24:mi'),22) fecha_registro,
       rpad(i.usuario,15) usuario,
       rpad(to_char(i.fecha_toma,'dd/mm/yyyy hh24:mi'),20) fecha_toma,
       rpad(i.valor_toma||' mg/dl',10) valor_toma,
       rpad(i.valor_correccion||' UI',13) valor_correccion,
       rpad(nvl(i.tipo_insulina,' '),35) tipo_insulina,
       rpad(i.reportado_a,40) reportado_a
    from t_correccion_insulina i
    where cd_atendimento=vAtendimento
    order by i.fecha_registro;

  vResultado clob;
begin
  /*vResultado:='COD. '||'USUARIO '||'FECHA TOMA '||'VALOR TOMA '||'FECHA REGISTRO '||'VALOR CORRECCIÓN '||
              'TIPO INSULINA '||'REPORTADO A'||chr(10);*/
  for i in datos loop
    vResultado:=vResultado||i.cd_secuencial||i.usuario||i.fecha_toma||i.valor_toma||i.fecha_registro||
                i.valor_correccion||i.tipo_insulina||i.reportado_a||chr(10);
  end loop;
  return(vResultado);
end FUN_CONTROL_HEMOGLUCOTEST_TXT;
