create or replace procedure PRC_INSERTA_T_CORREC_INSULINA (v_cd_formulario char, v_cd_atendimento number,
                                                               v_fecha_registro date, v_usuario char, v_fecha_toma date, 
                                                               v_valor_toma number, v_valor_correccion number, 
                                                               v_reportado_a varchar2, v_cd_secuencial number,
                                                               v_tipo_insulina VARCHAR)
is
  vSecuencial  NUMBER;
begin
  -- VERIFICA SI ES INSERCION O ACTUALIZACION
  if v_cd_secuencial is null then
    -- CALCULA EL SIGUIENTE SECUENCIAL
    begin
      select max(cd_secuencial)
      into vSecuencial
      from t_correccion_insulina
      where cd_atendimento=v_cd_atendimento;
    exception when others then
      vSecuencial:=0;
    end;
    -- INSERTA LA CORRECCION
    begin
      insert into t_correccion_insulina (cd_formulario, cd_atendimento, fecha_registro, usuario, fecha_toma, valor_toma, 
                                         valor_correccion, reportado_a, cd_secuencial, tipo_insulina)
      values (v_cd_formulario, v_cd_atendimento, v_fecha_registro, v_usuario, v_fecha_toma, v_valor_toma, v_valor_correccion, 
              v_reportado_a, nvl(vSecuencial,0)+1, v_tipo_insulina);
    exception when others then
      null;
    end;
  else
    begin
      update t_correccion_insulina
      set fecha_registro=v_fecha_registro,
          usuario=v_usuario,
          fecha_toma=v_fecha_toma,
          valor_toma=v_valor_toma,
          valor_correccion=v_valor_correccion,
          reportado_a=v_reportado_a,
          tipo_insulina=v_tipo_insulina
      where cd_atendimento=v_cd_atendimento and
            cd_secuencial=v_cd_secuencial;
    exception when others then
      null;
    end;
  end if;
  
  commit;
end PRC_INSERTA_T_CORREC_INSULINA;
