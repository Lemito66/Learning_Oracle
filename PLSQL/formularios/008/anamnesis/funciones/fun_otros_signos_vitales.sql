create or replace function fun_otros_signos_vitales(vAtendimento NUMBER)
return clob is

  cursor datos is
    select h.valor,
           j.ds_sinal_vital signo_vital,
           pua.ds_unidade_afericao unidad
    from dbamv.itcoleta_sinal_vital h,
         dbamv.coleta_sinal_vital i,
         dbamv.sinal_vital j,
         pw_documento_clinico pw,
         pw_unidade_afericao pua
    where i.cd_atendimento= vAtendimento and
          h.cd_coleta_sinal_vital=i.cd_coleta_sinal_vital and
          h.cd_sinal_vital=j.cd_sinal_vital and
          h.cd_sinal_vital not in (17,18,1,59,61,60,62,63,58,4,5,6,2,47,48,49,50,77,46,
                                   3,51,8,9,45,10,64,67,68,69,70,71,72,65,73,66, 7, 18) and --4
          h.valor is not null and
          i.cd_documento_clinico=pw.Cd_Documento_Clinico and
          h.cd_unidade_afericao=pua.cd_unidade_afericao and
          pw.tp_status='FECHADO' and
          i.data_coleta in (select max(m.data_coleta)
                            from dbamv.coleta_sinal_vital m,
                                 dbamv.itcoleta_sinal_vital n,
                                 pw_documento_clinico w
                            where m.cd_atendimento=vAtendimento and
                                  m.cd_coleta_sinal_vital=n.cd_coleta_sinal_vital and
                                  m.cd_documento_clinico=w.cd_Documento_Clinico and
                                  w.tp_status='FECHADO' and
                                  n.cd_sinal_vital=h.cd_sinal_vital );
  vResultado clob;
begin
  for x in datos loop
    vResultado:=vResultado||x.signo_vital||': '|| x.valor||' '||x.unidad||chr(10);
  end loop;
  return(vResultado);
end fun_otros_signos_vitales;
