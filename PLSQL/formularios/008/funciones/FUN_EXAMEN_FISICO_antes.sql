create or replace function FUN_EXAMEN_FISICO(v_atendimento NUMBER)
return CLOB is
  cursor DATOS is
    select a.tipo_examen_fisico,
           a.observaciones_examen_fisico,
           decode(trim(a.sp_cp),'SP','SIN PATOLOGÍA','CON PATOLOGÍA') sp_cp
    from t_examen_fisico a
    where a.cd_formulario=12 and
          a.cd_atendimento=v_atendimento and
          a.fecha_registro in (select max(b.fecha_registro)
                              from t_examen_fisico b
                              where b.tipo_examen_fisico=a.tipo_examen_fisico and
                                    b.cd_atendimento=a.cd_atendimento) /*and
          a.cd_emergencia in (select c.cd_emergencia
                               from   t_emergencia c
                               where  a.cd_atendimento=c.cd_atendimento and
                                      a.cd_formulario=c.cd_formulario)*/
    order by a.cd_examen_fisico;

  vResultado CLOB;
begin
  for i in datos loop
    if i.tipo_examen_fisico not like '%PRIMARIA%' then
       vResultado:=vResultado||i.tipo_examen_fisico||': '||i.sp_cp||' - '||i.observaciones_examen_fisico||chr(10);
    else
      vResultado:=vResultado||i.tipo_examen_fisico||': '||i.sp_cp||chr(10)||i.observaciones_examen_fisico||chr(10);
    end if;
  end loop;  

  return replace(upper(vResultado),chr(9),' ');
end FUN_EXAMEN_FISICO;
