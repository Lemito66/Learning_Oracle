create or replace procedure PRC_ELIMINA_T_PRO_MED_SUBCU(v_cd_atendimento NUMBER, v_codigo NUMBER) is
begin
  begin
    delete from T_PRO_MEDICACION_SUBCU
    where codigo=v_codigo and
          cd_atendimento=v_cd_atendimento;
  exception when others then
    null;
  end;
  commit;
end PRC_ELIMINA_T_PRO_MED_SUBCU;
