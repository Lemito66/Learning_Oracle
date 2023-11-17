create or replace procedure PRC_INSERTA_T_DATOS_GINEC(v_cd_formulario char, v_cd_atendimento number,
                                                             v_fecha_registro date, v_fum varchar2, v_usuario char,
                                                             v_gestas number, v_partos number, v_abortos number,
                                                             v_cesareas number, v_menarquia_edad number,
                                                             v_menopausia_edad number, v_ciclos varchar2, 
                                                             v_vida_sexual varchar2, v_hijos_vivos number,
                                                             v_mamografia varchar2, v_colposcopia varchar2,
                                                             v_terapia_hormonal varchar2, v_biopsia varchar2, 
                                                             v_fuc varchar2, v_metodo_planificacion varchar2, 
                                                             v_fup varchar2, v_obs clob, v_fuap varchar2, v_fuep varchar2) is
begin
  insert into t_datos_ginecologicos (CD_FORMULARIO, CD_ATENDIMENTO, FECHA_REGISTRO, FUM, USUARIO, GESTAS, PARTOS,
                                     ABORTOS, CESAREAS, MENARQUIA_EDAD, MENOPAUSIA_EDAD, CICLOS, VIDA_SEXUAL,
                                     HIJOS_VIVOS, MAMOGRAFIA, COLPOSCOPIA, TERAPIA_HORMONAL, BIOPSIA, FUC, 
                                     METODO_PLANIFICACION, FUP, OBSERVACIONES, fuap, fuep)
  values (v_cd_formulario, v_cd_atendimento, v_fecha_registro, v_fum, v_usuario, v_gestas, v_partos, v_abortos, 
          v_cesareas, v_menarquia_edad, v_menopausia_edad, v_ciclos, v_vida_sexual, v_hijos_vivos, v_mamografia, 
          v_colposcopia, v_terapia_hormonal, v_biopsia, v_fuc, v_metodo_planificacion, v_fup, v_obs, v_fuap, v_fuep);
          
  commit;
exception when others then
  null;
end PRC_INSERTA_T_DATOS_GINEC;
/
