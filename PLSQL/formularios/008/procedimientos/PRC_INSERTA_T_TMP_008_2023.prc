create or replace procedure PRC_INSERTA_T_TMP_008_2023(vAtendimento NUMBER) is
  V_CAMPO1 VARCHAR2(50);
  V_CAMPO2 VARCHAR2(50);
  V_CAMPO3 VARCHAR2(50);
  V_CAMPO4 VARCHAR2(50);
  V_CAMPO5 VARCHAR2(50);
  V_CAMPO6 VARCHAR2(50);
  V_CAMPO8 VARCHAR2(50);
  V_CAMPO9 VARCHAR2(50);
  V_CAMPO10 VARCHAR2(50);
  V_CAMPO11 VARCHAR2(50);
  V_CAMPO12 VARCHAR2(50);
  V_CAMPO13 VARCHAR2(20);
  V_CAMPO14 VARCHAR2(10);
  V_CAMPO15 VARCHAR2(50);
  V_CAMPO16 VARCHAR2(50);
  V_CAMPO17 VARCHAR2(50);
  V_CAMPO18 VARCHAR2(50);
  V_CAMPO19 VARCHAR2(50);
  V_CAMPO20 VARCHAR2(50);
  V_CAMPO21 VARCHAR2(20);
  V_CAMPO22 VARCHAR2(20);
  V_CAMPO24 VARCHAR2(50);
  V_CAMPO25 VARCHAR2(20);
  V_CAMPO26 VARCHAR2(20);
  V_CAMPO27 VARCHAR2(20);
  V_CAMPO28 VARCHAR2(50);
  V_CAMPO29 VARCHAR2(20);
  V_CAMPO30 VARCHAR2(50);
  V_CAMPO31 VARCHAR2(100);
  V_CAMPO32 VARCHAR2(100);
  V_CAMPO33 VARCHAR2(100);
  V_CAMPO34 VARCHAR2(100);
  V_CAMPO35 VARCHAR2(50);
  V_CAMPO36 VARCHAR2(100);
  V_CAMPO37 VARCHAR2(20);
  V_CAMPO38 VARCHAR2(100);
  V_CAMPO39 VARCHAR2(100);
  V_CAMPO40 VARCHAR2(100);
  V_CAMPO41 VARCHAR2(20);
  V_CAMPO42 VARCHAR2(20);
  V_CAMPO43 VARCHAR2(10);
  V_CAMPO44 VARCHAR2(10);
  V_CAMPO45 VARCHAR2(10);
  V_CAMPO46 VARCHAR2(10);
  V_CAMPO47 VARCHAR2(10);
  V_CAMPO48 VARCHAR2(50);
  V_CAMPO50 VARCHAR2(10);
  V_CAMPO51 VARCHAR2(10);
  V_CAMPO53 VARCHAR2(10);
  V_CAMPO54 VARCHAR2(10);
  V_CAMPO55 VARCHAR2(10);
  V_CAMPO56 VARCHAR2(10);
  V_CAMPO57 VARCHAR2(30);
  V_CAMPO58 VARCHAR2(50);
  V_CAMPO59 VARCHAR2(500);
  V_CAMPO60 VARCHAR2(500);
  V_CAMPO61 VARCHAR2(10);
  V_CAMPO62 VARCHAR2(10);
  V_CAMPO63 VARCHAR2(10);
  V_CAMPO64 VARCHAR2(10);
  V_CAMPO65 VARCHAR2(10);
  V_CAMPO66 VARCHAR2(10);
  V_CAMPO67 VARCHAR2(10);
  V_CAMPO68 VARCHAR2(10);
  V_CAMPO69 VARCHAR2(10);
  V_CAMPO70 VARCHAR2(10);
  V_CAMPO71 VARCHAR2(10);
  V_CAMPO72 VARCHAR2(10);
  V_CAMPO73 VARCHAR2(10);
  V_CAMPO74 VARCHAR2(10);
  V_CAMPO75 VARCHAR2(10);
  V_CAMPO76 VARCHAR2(10);
  V_CAMPO77 VARCHAR2(10);
  V_CAMPO78 VARCHAR2(10);
  V_CAMPO79 VARCHAR2(10);
  V_CAMPO81 VARCHAR2(10);
  V_CAMPO82 VARCHAR2(10);
  V_CAMPO83 VARCHAR2(10);
  V_CAMPO84 VARCHAR2(10);
  V_CAMPO85 VARCHAR2(10);
  V_CAMPO87 VARCHAR2(10);
  V_CAMPO88 VARCHAR2(10);
  V_CAMPO90 VARCHAR2(10);
  V_CAMPO91 VARCHAR2(10);
  V_CAMPO92 VARCHAR2(10);
  V_CAMPO93 VARCHAR2(10);
  V_CAMPO95 VARCHAR2(10);
  V_CAMPO96 VARCHAR2(10);
  V_CAMPO97 VARCHAR2(10);
  V_CAMPO98 VARCHAR2(10);
  V_CAMPO101 VARCHAR2(10);
  V_CAMPO102 VARCHAR2(10);
  V_CAMPO103 VARCHAR2(10);
  V_CAMPO104 VARCHAR2(10);
  V_CAMPO105 VARCHAR2(10);
  V_CAMPO106 VARCHAR2(10);
  V_CAMPO107 VARCHAR2(10);
  V_CAMPO108 VARCHAR2(10);
  V_CAMPO109 VARCHAR2(10);
  V_CAMPO110 VARCHAR2(10);
  V_CAMPO111 VARCHAR2(10);
  V_CAMPO112 VARCHAR2(10);
  V_CAMPO113 VARCHAR2(10);
  V_CAMPO114 VARCHAR2(10);
  V_CAMPO115 VARCHAR2(10);
  V_CAMPO116 VARCHAR2(10);
  V_CAMPO117 VARCHAR2(10);
  V_CAMPO118 VARCHAR2(10);
  V_CAMPO119 VARCHAR2(10);
  V_CAMPO122 VARCHAR2(10);
  V_CAMPO123 VARCHAR2(10);
  V_CAMPO124 VARCHAR2(10);
  V_CAMPO125 VARCHAR2(10);
  V_CAMPO126 VARCHAR2(10);
  V_CAMPO127 VARCHAR2(10);
  V_CAMPO128 VARCHAR2(10);
  V_CAMPO129 VARCHAR2(10);
  V_CAMPO130 VARCHAR2(10);
  V_CAMPO133 VARCHAR2(10);
  V_CAMPO134 VARCHAR2(50);
  V_CAMPO135 VARCHAR2(50);
  V_CAMPO136 VARCHAR2(50);
  V_CAMPO137 VARCHAR2(50);
  V_CAMPO138 VARCHAR2(50);
  V_CAMPO139 VARCHAR2(50);
  V_CAMPO140 VARCHAR2(50);
  V_CAMPO141 VARCHAR2(50);
  V_CAMPO142 VARCHAR2(50);
  V_CAMPO143 VARCHAR2(50);
  V_CAMPO144 VARCHAR2(50);
  V_CAMPO145 VARCHAR2(50);
  V_CAMPO146 VARCHAR2(50);
  V_CAMPO147 VARCHAR2(50);
  V_CAMPO148 VARCHAR2(50);
  V_CAMPO149 VARCHAR2(50);
  V_CAMPO150 VARCHAR2(50);
  V_CAMPO151 VARCHAR2(50);
  V_CAMPO152 VARCHAR2(50);
  V_CAMPO154 VARCHAR2(50);
  V_CAMPO155 VARCHAR2(50);
  V_CAMPO157 VARCHAR2(10);
  V_CAMPO158 VARCHAR2(10);
  V_CAMPO159 VARCHAR2(10);
  V_CAMPO160 VARCHAR2(10);
  V_CAMPO161 VARCHAR2(10);
  V_CAMPO162 VARCHAR2(10);
  V_CAMPO163 VARCHAR2(10);
  V_CAMPO164 VARCHAR2(10);
  V_CAMPO165 VARCHAR2(10);
  V_CAMPO166 VARCHAR2(10);
  V_CAMPO167 VARCHAR2(10);
  V_CAMPO168 VARCHAR2(10);
  V_CAMPO169 VARCHAR2(10);
  V_CAMPO23 CLOB;
  V_CAMPO49 VARCHAR2(10);
  V_CAMPO52 CLOB;
  V_CAMPO80 VARCHAR2(10);
  V_CAMPO86 CLOB;
  V_CAMPO89 VARCHAR2(10);
  V_CAMPO94 VARCHAR2(10);
  V_CAMPO99 CLOB;
  V_CAMPO100 CLOB;
  V_CAMPO120 VARCHAR2(10);
  V_CAMPO121 VARCHAR2(10);
  V_CAMPO131 CLOB;
  V_CAMPO132 CLOB;
  V_CAMPO153 CLOB;
  V_CAMPO156 VARCHAR2(10);
  V_CAMPO170 CLOB;
  V_CAMPO171 CLOB;
  V_CAMPO172 CLOB;
  V_CAMPO173 CLOB;
  V_CAMPO174 CLOB;
  V_CAMPO175 VARCHAR2(50);
  V_CAMPO176 VARCHAR2(500);
  V_CAMPO177 VARCHAR2(50);
  V_CAMPO178 VARCHAR2(500);
  V_CAMPO179 VARCHAR2(50);
  V_CAMPO7 VARCHAR2(50);
begin
  -- ELIMINA EL REGISTRO EXISTENTE
  begin
    delete t_tmp_008
    where campo7=vAtendimento;
  exception when others then
    null;
  end;
  commit;
  -- CONSULTA CAMPOS DEL PACIENTE Y ATENCIÓN
  begin
    select b.ds_multi_empresa institucion_del_sistema,
           decode(a.tp_atendimento,'U','EMERGENCIA','') unidad_operativa,
           'BELISARIO QUEVEDO' parroquia_empresa,
           c.nm_cidade canton_empresa,
           d.nm_estado provincia_empresa,
           e.cd_paciente nhcl,
           a.cd_atendimento admisión,
           decode(a.tp_medico_eleito,'H','HOSPITAL','PARTICULAR') tipo_paciente,
           e.ds_primeiro_sobrenome apellido_paterno_paciente,
           e.ds_segundo_sobrenome apellido_materno_paciente,
           e.ds_primeiro_nome primer_nombre_paciente,
           e.ds_segundo_nome segundo_nombre_paciente,
           nvl(e.cd_identificador_pessoa,e.nr_documento_estrangeiro) cedula_ciudadania_paciente,
           e.ds_endereco direccion_residencial_paciente,
           null barrio_paciente,
           e.nm_bairro parroquia_paciente,
           f.nm_cidade canton_paciente,
           g.nm_estado provincia_paciente,
           null zona_paciente,
           nvl(e.nr_fone,e.nr_celular) telefono_paciente,
           to_char(e.dt_nascimento,'dd/mm/yyyy') fecha_nacimiento_paciente,
           f.nm_cidade lugar_nacimiento_paciente,
           h.ds_cidadania nacionalidad_paciente,
           decode(e.tp_cor,'S','SIN INFORMACIÓN','R','MONTUBIO','P','MESTIZO','I','INDIGENA','B','BLANCO','A','AFROECUATORIANO') grupo_cultural_paciente,
           fn_idade(e.dt_nascimento) edad_paciente,
           decode(e.tp_sexo,'M','MASCULINO',' FEMENINO') sexo_paciente,
           decode(e.tp_estado_civil,'S','SOLTERO','C','CASADO','I','DIVORCIADO','V','VIUDO','U','UNION LIBRE') estado_civil_paciente,
           i.ds_grau_ins instruccion_paciente,
           to_char(a.hr_atendimento,'dd/mm/yyyy') fecha_admisión,
           j.nm_profissao ocupacion_paciente,
           e.ds_trabalho empresa_trabajo_paciente,
           k.nm_convenio convenio_paciente,
           l.ds_loc_proced referido_paciente,
           m.nm_responsavel avisar_a_paciente,
           n.ds_tip_paren pariente_paciente,
           m.ds_endereco direccion_pariente_paciente,
           m.nr_fone telefono_paciente_paciente,
           o.ds_meio_transporte llegada_paciente,
           l.ds_loc_proced entrega_paciente,
           nvl(e.tp_sanguineo,'DESC.') grupo_sanguineo,
           decode(a.sn_notificar_policia,'N','NO','SI') notificacion_policia,
           decode(a.sn_custodia_policial,'N','NO','SI') custodia_policial
    into   v_campo1,
           v_campo2,
           v_campo3,
           v_campo4,
           v_campo5,
           v_campo6,
           v_campo7,
           v_campo8,
           v_campo9,
           v_campo10,
           v_campo11,
           v_campo12,
           v_campo13,
           v_campo14,
           v_campo15,
           v_campo16,
           v_campo17,
           v_campo18,
           v_campo19,
           v_campo20,
           v_campo21,
           v_campo22,
           v_campo23,
           v_campo24,
           v_campo25,
           v_campo26,
           v_campo27,
           v_campo28,
           v_campo29,
           v_campo30,
           v_campo31,
           v_campo32,
           v_campo33,
           v_campo34,
           v_campo35,
           v_campo36,
           v_campo37,
           v_campo38,
           v_campo40,
           v_campo47,
           v_campo48,
           v_campo53
    from   atendime a,  -- tabla de la atención
           multi_empresas b, -- tabla de la empresa, aquí está hospital metroplitano
           cidade c, -- Ciudades
           estado d, -- Provincias
           paciente e, -- Datos del paciente
           cidade f, -- Ciudades
           estado g, -- Provincia
           cidadanias h, -- Nacionalidad
           grau_ins i, -- Grado de instrucción, ingeniero, bachiller, etc.
           profissao j, -- profesiones
           convenio k, -- convenios por seguro médico
           loc_proced l, -- por confirmar
           responsa m, -- Responsable 
           tip_paren n, -- tipo de parentesco, madre,padre,chofe,amigo, etc.
           meio_transporte o -- En que medio de transporte llego el paciente.
    where a.cd_multi_empresa=b.cd_multi_empresa(+) and
          b.cd_cidade=c.cd_cidade(+) and
          a.cd_atendimento=vAtendimento and
          c.cd_estado=d.cd_estado(+) and
          a.cd_paciente=e.cd_paciente(+) and
          e.cd_cidade=f.cd_cidade(+) and
          f.cd_estado=g.cd_estado(+) and
          e.cd_cidadania=h.cd_cidadania(+) and
          e.cd_grau_ins=i.cd_grau_ins(+) and
          e.cd_profissao=j.cd_profissao(+) and
          a.cd_convenio=k.cd_convenio(+) and
          a.cd_loc_proced=l.cd_loc_proced(+) and
          a.cd_atendimento=m.cd_atendimento(+) and
          m.cd_tip_paren=n.cd_tip_paren(+) and
          a.cd_meio_transporte=o.cd_meio_transporte(+);
  exception when others then
    null;
  end;
  -- CONSULTA LA FECHA DE LA ATENCIÓN
  begin
    select to_char(a.fecha_registro,'dd/mm/yyyy hh24:mi') hora_atencion
    into v_campo42
    from t_emergencia a
    where a.cd_atendimento=vAtendimento and
          a.cd_ultimo_registro in (select min(b.cd_ultimo_registro)
                                   from t_emergencia b
                                   where b.cd_atendimento=vAtendimento);
  exception when others then
    null;
  end;
  -- DATOS DE LA ATENCION
  begin
    select decode(a.tipo_motivo_atencion,'TRAUMA','true','false') trauma_x,
      decode(a.tipo_motivo_atencion,'CAUSA CLÍNICA','true','false') causa_clinica_x,
      decode(a.tipo_motivo_atencion,'CAUSA G. OBSTÉTRICA','true','false') causa_obstetrica_x,
      decode(a.tipo_motivo_atencion,'CAUSA QUIRÚRGICA','true','false') causa_quirurgica_x,
      a.fecha_evento,
      a.lugar_evento,
      a.direccion_evento,
      decode(nvl(a.alcocheck,'NO'),'NO','false','true') alcocheck,
      decode(a.via_aerea,'LIBRE','true','false') via_area_libre,
      decode(a.via_aerea,'OBSTRUÍDA','true','false') via_area_obstruida,
      decode(a.condicion,'ESTABLE','true','false') condicion_estable,
      decode(a.condicion,'INESTABLE','true','false') condicion_inestable,
      a.detalle_enfermedad_actual enfermedad_actual,
      -- SIGNOS VITALES
      fun_signos_vitales(a.cd_atendimento, 4) presion_arterial_1,
      fun_signos_vitales(a.cd_atendimento, 5) presion_arterial_2,
      fun_signos_vitales(a.cd_atendimento, 2) frecuencia_cardiaca,
      fun_signos_vitales(a.cd_atendimento, 3) frecuencia_respiratoria,
      fun_signos_vitales_temperatura(a.cd_atendimento,8) temperatura_bucal,
      fun_signos_vitales_temperatura(a.cd_atendimento,7) temperatura_axilar,
      fun_signos_vitales_u(a.cd_atendimento, 8) peso,
      fun_signos_vitales_u(a.cd_atendimento, 9) talla,
      fun_signos_vitales_imc(a.cd_atendimento) imc,
      fun_signos_vitales_glasgow(a.cd_atendimento, 'OCULAR') ocular,
      fun_signos_vitales_glasgow(a.cd_atendimento, 'VERBAL') verbal,
      fun_signos_vitales_glasgow(a.cd_atendimento, 'MOTORA') motora,
      fun_signos_vitales_glasgow_t_u(a.cd_atendimento) total_glasgow,
      fun_signos_vitales(a.cd_atendimento, 42) reaccion_derecha,
      fun_signos_vitales(a.cd_atendimento, 43) reaccion_izquierda,
      fun_signos_vitales(a.cd_atendimento, 41) llenado_capilar,
      fun_signos_vitales(a.cd_atendimento, 7) saturacion_oxigeno,
      -- HERIDAS
      decode(a.localizacion_1,0,null,a.localizacion_1) localizacion_1,
      decode(a.localizacion_2,0,null,a.localizacion_2) localizacion_2,
      decode(a.localizacion_3,0,null,a.localizacion_3) localizacion_3,
      decode(a.localizacion_4,0,null,a.localizacion_4) localizacion_4,
      decode(a.localizacion_5,0,null,a.localizacion_5) localizacion_5,
      decode(a.localizacion_6,0,null,a.localizacion_6) localizacion_6,
      decode(a.localizacion_7,0,null,a.localizacion_7) localizacion_7,
      decode(a.localizacion_8,0,null,a.localizacion_8) localizacion_8,
      decode(a.localizacion_9,0,null,a.localizacion_9) localizacion_9,
      decode(a.localizacion_10,0,null,a.localizacion_10) localizacion_10,
      decode(a.localizacion_11,0,null,a.localizacion_11) localizacion_11,
      decode(a.localizacion_12,0,null,a.localizacion_12) localizacion_12,
      decode(a.localizacion_13,0,null,a.localizacion_13) localizacion_13,
      decode(a.localizacion_14,0,null,a.localizacion_14) localizacion_14,
      decode(a.localizacion_15,0,null,a.localizacion_15) localizacion_15,
      a.localizacion_otro,
      -- DATOS GINECOLOGICOS
      a.gestas,
      a.partos,
      a.abortos,
      a.cesareas,
      a.fum,
      a.semanas_gestacion,
      a.movimiento,
      a.frecuencia_fetal,
      a.membranas_rotas,
      a.tiempo,
      a.altura_uterina,
      a.presentacion,
      a.dilatacion,
      a.borramiento,
      a.plano,
      a.pelvis_util,
      a.sangrado_vaginal,
      a.contracciones,
      a.monitoreo_ginecologico,
      -- OTROS EXAMENES
      observaciones_otro_examen,
      decode(trim(a.consentimiento_verbal),'SI','true','false') consentimiento_verbal,
      -- DIAGNOSTICOS
      fun_diagnosticos_ingreso_008(a.cd_atendimento) diagnostico_ingreso,
      fun_diagnosticos_egreso_008(a.cd_atendimento) diagnostico_egreso,
      -- PLANES DE EGRESO
      'INDICACIONES'||chr(10)||'---------------------'||chr(10)||planes_tratamiento plan_tratamiento_1,
      fun_detalle_medicacion_008(a.cd_atendimento) plan_tratamiento_2,
      -- FINAL USUARIO
      u.nm_usuario usuario_crea,
      u.cd_identificador_pessoa codigo_crea,
      a.fuente_informacion,
      a.telefono_fuente
    into v_campo43,
         v_campo44,
         v_campo45,
         v_campo46,
         v_campo50,
         v_campo51,
         v_campo52,
         v_campo79,
         v_campo90,
         v_campo91,
         v_campo92,
         v_campo93,
         v_campo94,
         v_campo95,
         v_campo96,
         v_campo97,
         v_campo98,
         v_campo99,
         v_campo100,
         v_campo101,
         v_campo102,
         v_campo103,
         v_campo104,
         v_campo105,
         v_campo106,
         v_campo107,
         v_campo108,
         v_campo109,
         v_campo110,
         v_campo111,
         v_campo122,
         v_campo123,
         v_campo124,
         v_campo125,
         v_campo126,
         v_campo127,
         v_campo128,
         v_campo129,
         v_campo130,
         v_campo131,
         v_campo132,
         v_campo133,
         v_campo134,
         v_campo135,
         v_campo136,
         v_campo137,
         v_campo138,
         v_campo139,
         v_campo140,
         v_campo141,
         v_campo142,
         v_campo143,
         v_campo144,
         v_campo145,
         v_campo146,
         v_campo147,
         v_campo148,
         v_campo149,
         v_campo150,
         v_campo151,
         v_campo152,
         v_campo153,
         v_campo154,
         v_campo155,
         v_campo156,
         v_campo173,
         v_campo174,
         v_campo176,
         v_campo177,
         v_campo178,
         v_campo179,
         v_campo180,
         v_campo181,
         v_campo39,
         v_campo41
    from t_emergencia a,
      usuarios u
    where a.cd_atendimento=vAtendimento and
      trim(a.usuario)=u.cd_usuario and
      a.cd_ultimo_registro in (select max(b.cd_ultimo_registro)
                               from t_emergencia b
                               where b.cd_atendimento=vAtendimento);
  exception when others then
    null;
  end;
  
  -- CAMPOS DE FORMULARIOS
  begin
    select 
      (select d.lo_conteudo
      from  pw_editor_clinico a, 
            pw_documento_clinico b, 
            editor.editor_registro c,
            editor.editor_registro_campo d, 
            editor.editor_campo e 
      where a.cd_documento =645 and 
            a.cd_documento_clinico=b.cd_documento_clinico and
            b.tp_status='FECHADO' and
            a.cd_editor_registro=c.cd_registro and
            b.cd_atendimento=vAtendimento and 
            c.cd_registro=d.cd_registro and
            c.cd_registro=a.cd_editor_registro and
            d.cd_campo=e.cd_campo and
            e.cd_metadado=76058 and 
            b.cd_documento_clinico in (select max(x.cd_documento_clinico)
                                       from pw_documento_clinico x,
                                            pw_editor_clinico y
                                       where x.tp_status='FECHADO' and
                                             y.cd_documento=645 and
                                             x.cd_atendimento=vAtendimento and
                                             x.cd_documento_clinico=y.cd_documento_clinico)) otro_motivo,
      (select x.lo_conteudo 
          from   editor.editor_registro_campo x,
                 pw_editor_clinico pw,
                 pw_documento_clinico doc
          where  x.cd_campo in (293670, 261292, 297052, 297214, 320538, 320758, 343291,97907,349991,373231,374652,375081,
                                429896) and
                 pw.cd_documento_clinico=doc.cd_documento_clinico and
                 pw.cd_editor_registro=x.cd_registro and
                 doc.cd_atendimento=vAtendimento and
                 doc.tp_status='FECHADO' and
           doc.cd_documento_clinico in (select max(docc.cd_documento_clinico)
                                        from   editor.editor_registro_campo xx,
                                               pw_editor_clinico pww,
                                               pw_documento_clinico docc
                                        where  xx.cd_campo=x.cd_campo and
                                               pww.cd_documento_clinico=docc.cd_documento_clinico and
                                               pww.cd_editor_registro=xx.cd_registro and
                                               docc.cd_atendimento=vAtendimento and
                                               docc.tp_status='FECHADO')) imagen
      into v_campo49,
           v_campo121
      from dual;
  exception when others then 
    null;
  end;
  -- ANTECEDENTE, EXAMEN FISICO
  begin
    select  'true' alergico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente='CLÍNICO'),'false') clinico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente='GINECOLÓGICO'),'false') ginecologico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente='TRAUMATOLÓGICO'),'false') traumatologico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente='QUIRÚRGICO'),'false') quirurgico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente='FARMACOLÓGICO'),'false') farmacologico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente='PEDIÁTRICO'),'false') pediatrico,
        nvl((select decode(count(*),0,'false','true') from t_antecedente_pers_fam where cd_atendimento=a.cd_atendimento and tipo_antecedente in ('OTRO','NATURÓPATA')),'false') otro,
        fun_antecedentes_medicos(a.cd_atendimento) antecedentes_4,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='VÍA AÉREA OBSTRUÍDA'),'false') via_area_obstruida,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='CABEZA'),'false') cabeza,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='CUELLO'),'false') cuello,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='TÓRAX'),'false') torax,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='ABDOMEN'),'false') abdomen,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='COLUMNA'),'false') columna,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='PELVIS'),'false') pelvis,
        nvl((select decode(count(*),0,'false','true') from t_examen_fisico a where cd_atendimento=a.cd_atendimento and a.tipo_examen_fisico='EXTREMIDADES'),'false') extremidades,
        fun_examen_fisico_008(a.cd_atendimento) observaciones_7
    into v_campo81,
         v_campo82,
         v_campo83,
         v_campo84,
         v_campo85,
         v_campo86,
         v_campo87,
         v_campo88,
         v_campo89,
         v_campo112,
         v_campo113,
         v_campo114,
         v_campo115,
         v_campo116,
         v_campo117,
         v_campo118,
         v_campo119,
         v_campo120
    from atendime a
    where a.cd_atendimento=vAtendimento;
  exception when others then
    null;
  end;
  -- MOTIVO DE ATENCION
  begin
    select decode(a.detalle_evento,'ACCIDENTE DE TRÁNSITO','true','false') accidente_transito,
           decode(a.detalle_evento,'CAÍDA','true','false') caida,
           decode(a.detalle_evento,'QUEMADURA','true','false') quemadura,
           decode(a.detalle_evento,'MORDEDURA','true','false') mordedura,
           decode(a.detalle_evento,'AHOGAMIENTO','true','false') ahogamiento,
           decode(a.detalle_evento,'CUERPO EXTRAÑO','true','false') cuerpo_extranio,
           decode(a.detalle_evento,'APLASTAMIENTO','true','false') aplastamiento,
           decode(a.detalle_evento,'OTRO ACCIDENTE','true','false') otro_accidente,
           decode(a.detalle_evento,'VIOLENCIA X ARMA DE FUEGO','true','false') arma_fuego,
           decode(a.detalle_evento,'VIOLENCIA X ARMA C.','true','false') arma_c,
           decode(a.detalle_evento,'VIOLENCIA X RIÑA','true','false') violencia_rinia,
           decode(a.detalle_evento,'VIOLENCIA FAMILIAR','true','false') violencia_familiar,
           decode(a.detalle_evento,'ABUSO FÍSICO','true','false') abuso_fisico,
           decode(a.detalle_evento,'ABUSO PSICOLÓGICO','true','false') abuso_sicologico,
           decode(a.detalle_evento,'ABUSO SEXUAL','true','false') abuso_sexual,
           decode(a.detalle_evento,'OTRA VIOLENCIA','true','false') otra_violencia,
           decode(a.detalle_evento,'INTOXICACIÓN ALCOHÓLICA','true','false') intoxicacion_alcoholica,
           decode(a.detalle_evento,'INTOXICACIÓN ALIMENTARIA','true','false') intoxicacion_alimentaria,
           decode(a.detalle_evento,'INTOXICACIÓN X DROGAS','true','false') intoxicacion_drogas,
           decode(a.detalle_evento,'INHALACIÓN DE GASES','true','false') inhalacion_gases,
           decode(a.detalle_evento,'OTRA INTOXICACIÓN','true','false') otra_intoxicacion,
           decode(a.detalle_evento,'ENVENAMIENTO','true','false') envenenamiento,
           decode(a.detalle_evento,'PICADURA','true','false') picadura,
           decode(a.detalle_evento,'ANAFILAXIA','true','false') anafilaxia,
           decode(a.detalle_evento,'ALIENTO ETÍLICO','true','false') aliento_etilico,
           fun_motivo_atencion(a.cd_atendimento) observaciones_3
    into v_campo54,
         v_campo55,
         v_campo56,
         v_campo57,
         v_campo58,
         v_campo59,
         v_campo60,
         v_campo61,
         v_campo62,
         v_campo63,
         v_campo64,
         v_campo65,
         v_campo66,
         v_campo67,
         v_campo68,
         v_campo69,
         v_campo70,
         v_campo71,
         v_campo72,
         v_campo73,
         v_campo74,
         v_campo75,
         v_campo76,
         v_campo77,
         v_campo78,
         v_campo80
    from t_motivo_atencion a
    where a.cd_atendimento=vAtendimento and
    a.fecha_registro in (select max(b.fecha_registro)
                        from editor_custom.t_motivo_atencion b
                        where b.cd_atendimento=vAtendimento);
  exception when others then
    null;
  end;
  
  -- DATOS EXAMENES
  begin
    select (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXL') and
                  b.cd_tip_presc in (183,184) and
                  nvl(b.sn_cancelado,'N')='N') biometria,
           
           'false' quimica_sanguinea,
           
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXL') and
                  b.cd_tip_presc in (315,316) and
                  nvl(b.sn_cancelado,'N')='N') gasometria,
                  
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('PME') and
                  b.cd_tip_presc in (1587,1588) and
                  nvl(b.sn_cancelado,'N')='N') endoscopia,
           
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (632,564,565) and
                  nvl(b.sn_cancelado,'N')='N') rx_abdomen,
           
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b,
                 tip_presc c,
                 exa_rx d
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq = 'EXI' and
                  b.cd_tip_presc = c.cd_tip_presc and
                  c.cd_exa_rx = d.cd_exa_rx and
                  d.cd_modalidade_exame = 2 and
                  nvl(b.sn_cancelado,'N')='N') tomografia,
                
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (893) and
                  nvl(b.sn_cancelado,'N')='N') ecografia,
                  
           (select decode(count(*),0,'false','true')
            from par_med
            where cd_atendimento=vAtendimento and
                        ds_solicitacao<>'Cancelado') interconsulta,
                        
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXL') and
                  b.cd_tip_presc in (376) and
                  nvl(b.sn_cancelado,'N')='N') uroanalisis,
                   
           (select decode(count(*),0,'false','true') valor
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXL') and
                  b.cd_tip_presc in (306) and
                  nvl(b.sn_cancelado,'N')='N') electrolitos,
                  
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (678,677,679,676) and
                   nvl(b.sn_cancelado,'N')='N') electrocardiograma,
                   
           (select decode(count(*),0,'false','true') valor
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (631,635,561,562,563) and
                   nvl(b.sn_cancelado,'N')='N') rx_torax,
                   
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (627,17480,586,963,17479,17474) and
                   nvl(b.sn_cancelado,'N')='N') rx_osea,
                   
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (766,765,767,716,715,717,713,712,714,734,733,989,990,729,985,730,986,996,740,739,995,731,987,732,988,696,
                                     695,697,699,698,700,702,701,703,707,706,708,693,694,681,680,682,743,997,744,998,758,688,687,689,685,686,
                                     741,742,726,759,764,727,983,728,984,737,993,738,994,735,991,736,992,745,999,746,1000,719,718,720,762,763,
                                     753,1007,754,1008,749,1003,750,1004,710,709,711,756,757,747,1001,748,1002,691,690,692,683,684,751,1005,
                                     752,1006,704,705,760,722,721,723) and
                   nvl(b.sn_cancelado,'N')='N') resonancia,
                   
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_esq in ('EXI') and
                  b.cd_tip_presc in (890,891,920) and
                   nvl(b.sn_cancelado,'N')='N') ecografia_abdomen,
                   
           (select decode(count(*),0,'false','true') 
            from pre_med a,
                 itpre_med b
            where a.cd_atendimento=vAtendimento and
                  a.cd_pre_med=b.cd_pre_med and
                  b.cd_tip_presc not in (183,184,315,316,1587,1588,632,564,565,875,805,807,806,808,876,1016,853,1015,854,840,850,1012,860,859,
                                         1021,820,799,800,843,1014,851,1013,852,795,796,879,871,872,873,818,793,794,801,802,842,798,809,844,
                                         847,870,1011,1010,848,845,846,1020,857,1019,858,1017,856,1018,1024,1023,862,797,813,810,811,812,1031,
                                         1030,869,1027,816,864,863,1026,830,804,867,1029,1028,874,803,824,814,893,376,306,678,677,679,676,631,
                                         635,561,562,563,631,635,561,562,563,766,765,767,716,715,717,713,712,714,734,733,989,990,729,985,730,
                                         986,996,740,739,995,731,987,732,988,696,695,697,699,698,700,702,701,703,707,706,708,693,694,681,680,
                                         682,743,997,744,998,758,688,687,689,685,686,741,742,726,759,764,727,983,728,984,737,993,738,994,735,
                                         991,736,992,745,999,746,1000,719,718,720,762,763,753,1007,754,1008,749,1003,750,1004,710,709,711,756,
                                         757,747,1001,748,1002,691,690,692,683,684,751,1005,752,1006,704,705,760,722,721,723,890,891,920) and
                  nvl(b.sn_cancelado,'N')='N') otros,
                  
           fun_obs_examenes(10090)
    into v_campo157,
         v_campo158,
         v_campo159,
         v_campo160,
         v_campo161,
         v_campo162,
         v_campo163,
         v_campo164,
         v_campo165,
         v_campo166,
         v_campo167,
         v_campo168,
         v_campo169,
         v_campo170,
         v_campo171,
         v_campo172,
         v_campo175
    from dual;
  exception when others then
    null;
  end;
  
  -- ******* INSERTA EN TABLA TOTAL DE CAMPOS ******
  begin
    insert into t_tmp_008 (CAMPO1,CAMPO2,CAMPO3,CAMPO4,CAMPO5,CAMPO6,CAMPO7,CAMPO8,CAMPO9,CAMPO10,CAMPO11,CAMPO12,CAMPO13,
                           CAMPO14,CAMPO15,CAMPO16,CAMPO17,CAMPO18,CAMPO19,CAMPO20,CAMPO21,CAMPO22,CAMPO23,CAMPO24,CAMPO25,
                           CAMPO26,CAMPO27,CAMPO28,CAMPO29,CAMPO30,CAMPO31,CAMPO32,CAMPO33,CAMPO34,CAMPO35,CAMPO36,CAMPO37,
                           CAMPO38,CAMPO39,CAMPO40,CAMPO41,CAMPO42,CAMPO43,CAMPO44,CAMPO45,CAMPO46,CAMPO47,CAMPO48,CAMPO49,
                           CAMPO50,CAMPO51,CAMPO52,CAMPO53,CAMPO54,CAMPO55,CAMPO56,CAMPO57,CAMPO58,CAMPO59,CAMPO60,CAMPO61,
                           CAMPO62,CAMPO63,CAMPO64,CAMPO65,CAMPO66,CAMPO67,CAMPO68,CAMPO69,CAMPO70,CAMPO71,CAMPO72,CAMPO73,
                           CAMPO74,CAMPO75,CAMPO76,CAMPO77,CAMPO78,CAMPO79,CAMPO80,CAMPO81,CAMPO82,CAMPO83,CAMPO84,CAMPO85,
                           CAMPO86,CAMPO87,CAMPO88,CAMPO89,CAMPO90,CAMPO91,CAMPO92,CAMPO93,CAMPO94,CAMPO95,CAMPO96,CAMPO97,
                           CAMPO98,CAMPO99,CAMPO100,CAMPO101,CAMPO102,CAMPO103,CAMPO104,CAMPO105,CAMPO106,CAMPO107,CAMPO108,
                           CAMPO109,CAMPO110,CAMPO111,CAMPO112,CAMPO113,CAMPO114,CAMPO115,CAMPO116,CAMPO117,CAMPO118,CAMPO119,
                           CAMPO120,CAMPO121,CAMPO122,CAMPO123,CAMPO124,CAMPO125,CAMPO126,CAMPO127,CAMPO128,CAMPO129,CAMPO130,
                           CAMPO131,CAMPO132,CAMPO133,CAMPO134,CAMPO135,CAMPO136,CAMPO137,CAMPO138,CAMPO139,CAMPO140,CAMPO141,
                           CAMPO142,CAMPO143,CAMPO144,CAMPO145,CAMPO146,CAMPO147,CAMPO148,CAMPO149,CAMPO150,CAMPO151,CAMPO152,
                           CAMPO153,CAMPO154,CAMPO155,CAMPO156,CAMPO157,CAMPO158,CAMPO159,CAMPO160,CAMPO161,CAMPO162,CAMPO163,
                           CAMPO164,CAMPO165,CAMPO166,CAMPO167,CAMPO168,CAMPO169,CAMPO170,CAMPO171,CAMPO172,CAMPO173,CAMPO174,
                           CAMPO175,CAMPO176,CAMPO177,CAMPO178,CAMPO179,CAMPO180,CAMPO181)
    values (v_campo1,v_campo2,v_campo3,v_campo4,v_campo5,v_campo6,v_campo7,v_campo8,v_campo9,v_campo10,v_campo11,v_campo12,
            v_campo13,v_campo14,v_campo15,v_campo16,v_campo17,v_campo18,v_campo19,v_campo20,v_campo21,v_campo22,v_campo23,
            v_campo24,v_campo25,v_campo26,v_campo27,v_campo28,v_campo29,v_campo30,v_campo31,v_campo32,v_campo33,v_campo34,
            v_campo35,v_campo36,v_campo37,v_campo38,v_campo39,v_campo40,v_campo41,v_campo42,v_campo43,v_campo44,v_campo45,
            v_campo46,v_campo47,v_campo48,v_campo49,v_campo50,v_campo51,v_campo52,v_campo53,v_campo54,v_campo55,v_campo56,
            v_campo57,v_campo58,v_campo59,v_campo60,v_campo61,v_campo62,v_campo63,v_campo64,v_campo65,v_campo66,v_campo67,
            v_campo68,v_campo69,v_campo70,v_campo71,v_campo72,v_campo73,v_campo74,v_campo75,v_campo76,v_campo77,v_campo78,
            v_campo79,v_campo80,v_campo81,v_campo82,v_campo83,v_campo84,v_campo85,v_campo86,v_campo87,v_campo88,v_campo89,
            v_campo90,v_campo91,v_campo92,v_campo93,v_campo94,v_campo95,v_campo96,v_campo97,v_campo98,v_campo99,v_campo100,
            v_campo101,v_campo102,v_campo103,v_campo104,v_campo105,v_campo106,v_campo107,v_campo108,v_campo109,v_campo110,
            v_campo111,v_campo112,v_campo113,v_campo114,v_campo115,v_campo116,v_campo117,v_campo118,v_campo119,v_campo120,
            v_campo121,v_campo122,v_campo123,v_campo124,v_campo125,v_campo126,v_campo127,v_campo128,v_campo129,v_campo130,
            v_campo131,v_campo132,v_campo133,v_campo134,v_campo135,v_campo136,v_campo137,v_campo138,v_campo139,v_campo140,
            v_campo141,v_campo142,v_campo143,v_campo144,v_campo145,v_campo146,v_campo147,v_campo148,v_campo149,v_campo150,
            v_campo151,v_campo152,v_campo153,v_campo154,v_campo155,v_campo156,v_campo157,v_campo158,v_campo159,v_campo160,
            v_campo161,v_campo162,v_campo163,v_campo164,v_campo165,v_campo166,v_campo167,v_campo168,v_campo169,v_campo170,
            v_campo171,v_campo172,v_campo173,v_campo174,v_campo175,v_campo176,v_campo177,v_campo178,v_campo179,v_campo180,
            v_campo181);
  exception when others then
    null;
  end;
  
  commit;
end PRC_INSERTA_T_TMP_008_2023;
/
