create or replace procedure prc_inserta_t_anamnesis(v_cd_formulario CHAR,v_cd_atendimento NUMBER,v_fecha_registro DATE,
                                                    v_planes_tratamiento VARCHAR2,v_estado CHAR,v_usuario CHAR,
                                                    v_motivo_consulta_1 VARCHAR2, v_motivo_consulta_2 VARCHAR2,
                                                    v_motivo_consulta_3 VARCHAR2, v_motivo_consulta_4 VARCHAR2,
                                                    v_enfermedad_actual VARCHAR2, v_cd_anamnesis NUMBER,
                                                    v_nutricional VARCHAR2, v_funcional VARCHAR2, 
                                                    v_cognitiva VARCHAR2, v_general VARCHAR, 
                                                    v_datos_filiacion VARCHAR2) is
  vSecuencial number;
begin
  --if nvl(v_motivo_consulta_1,'x')<>'x' then
    
    select seq_anamnesis.nextval into vSecuencial from dual;
  
    insert into T_ANAMNESIS (CD_FORMULARIO,CD_ATENDIMENTO,FECHA_REGISTRO,PLANES_TRATAMIENTO,ESTADO,USUARIO, MOTIVO_CONSULTA_1, 
                             MOTIVO_CONSULTA_2, MOTIVO_CONSULTA_3, MOTIVO_CONSULTA_4, ENFERMEDAD_ACTUAL, CD_ANAMNESIS, 
                             CD_ULTIMO_ANAMNESIS, VAL_NUTRICIONAL, VAL_FUNCIONAL, VAL_COGNITIVA, GENERAL, DATOS_FILIACION)
    values (v_cd_formulario ,v_cd_atendimento ,v_fecha_registro ,
            replace(v_planes_tratamiento,chr(39),' '),
            v_estado ,v_usuario,
            replace(v_motivo_consulta_1, chr(39),' '),
            replace(v_motivo_consulta_2,chr(39),' '),
            replace(v_motivo_consulta_3, chr(39),' '),
            replace(v_motivo_consulta_4, chr(39),' '),
            replace(v_enfermedad_actual,chr(39),' '),
            v_cd_anamnesis, vSecuencial, v_nutricional, v_funcional,v_cognitiva,
            v_general,
            replace(v_datos_filiacion,chr(39),' ')
            );
  --end if;
  commit;
end prc_inserta_t_anamnesis;
/
