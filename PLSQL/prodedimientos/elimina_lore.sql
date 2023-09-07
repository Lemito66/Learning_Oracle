create or replace procedure PRC_ELIMINA_T_CORREC_INSULINA(vAtendimento NUMBER, vCdSecuencial NUMBER) is
begin
  delete from t_correccion_insulina
  where cd_atendimento=vAtendimento and
        cd_secuencial=vCdSecuencial;
        
  commit;
exception when others then
  null;  
end PRC_ELIMINA_T_CORREC_INSULINA;