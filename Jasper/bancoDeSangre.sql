SELECT *
FROM (select 1 AS fila1, p.nm_paciente apellidos_nombres, s.ds_servico servicio, u.ds_unid_int sala, l.ds_leito cama, null x_cedula_identidad, null x_pasaporte, 'X' nhcl,
		     null x_formulario_emergencia, a.cd_paciente no_identificacion, c.ds_cidadania nacionalidad, p.dt_nascimento fecha_nacimiento,
			 replace(fn_idade(p.dt_nascimento,'a A m M d D'),'Anos','Años') edad, decode(p.tp_sexo,'M','X') x_h, decode(p.tp_sexo,'F','X') x_f,
			 editor_custom.fun_signos_vitales_u(a.cd_atendimento,8) peso
	  from atendime a, paciente p,  leito l,  servico s, unid_int u, cidadanias c
	  where a.cd_paciente=p.cd_paciente and   
		    a.cd_leito=l.cd_leito(+) and
		    a.cd_atendimento=$P{atencion} and
		    a.cd_servico=s.cd_servico(+) and
		    l.cd_unid_int=u.cd_unid_int(+) and
		    p.cd_cidadania=c.cd_cidadania(+)) datosPaciente
LEFT JOIN (select 1 AS fila2, SUBSTR(diagnosticoCIE10, 1, INSTR(diagnosticoCIE10, '-') - 1) AS codigoCIE10, 
				   SUBSTR(diagnosticoCIE10, INSTR(diagnosticoCIE10, '-') + 1) AS descripcionCIE10
		    from (select editor_custom.fun_datos_campo_formulario($P{atencion},426428) diagnosticoCIE10 from dual)) datosDiagnosticoCIE10
ON datosPaciente.fila1 = datosDiagnosticoCIE10.fila2
LEFT JOIN (select 1 AS fila3, editor_custom.fun_datos_campo_formulario($P{atencion},415631) AS ISSFA from dual) datosISSFA 
ON datosPaciente.fila1 = datosISSFA.fila3
LEFT JOIN (select 1 AS fila4, editor_custom.fun_datos_campo_formulario($P{atencion},415634) AS ISSPOL from dual) datosISSPOL
ON datosPaciente.fila1 = datosISSPOL.fila4
LEFT JOIN (select 1 AS fila5, editor_custom.fun_datos_campo_formulario($P{atencion},415637) AS IESSGeneral from dual) datosIESSGeneral
ON datosPaciente.fila1 = datosIESSGeneral.fila5
LEFT JOIN (select 1 AS fila6, editor_custom.fun_datos_campo_formulario($P{atencion},415640) AS IESSVoluntario from dual) datosIESSVoluntario
ON datosPaciente.fila1 = datosIESSVoluntario.fila6
LEFT JOIN (select 1 AS fila7, editor_custom.fun_datos_campo_formulario($P{atencion},415643) AS IESSCampesino from dual) datosIESSCampesino
ON datosPaciente.fila1 = datosIESSCampesino.fila7
LEFT JOIN (select 1 AS fila8, editor_custom.fun_datos_campo_formulario($P{atencion},415646) AS jubilado from dual) datosJubilado
ON datosPaciente.fila1 = datosJubilado.fila8
LEFT JOIN (select 1 AS fila9, editor_custom.fun_datos_campo_formulario($P{atencion},415649) AS noAporta from dual) datosNoAporta
ON datosPaciente.fila1 = datosNoAporta.fila9
LEFT JOIN (select 1 AS fila10, editor_custom.fun_datos_campo_formulario($P{atencion},415652) AS seguroPrivado from dual) datosSeguroPrivado
ON datosPaciente.fila1 = datosSeguroPrivado.fila10
LEFT JOIN (select 1 AS fila11, editor_custom.fun_datos_campo_formulario($P{atencion},415655) AS seguroIndirecto from dual) datosSeguroIndirecto
ON datosPaciente.fila1 = datosSeguroIndirecto.fila11
LEFT JOIN (select 1 AS fila12, editor_custom.fun_datos_campo_formulario($P{atencion},415306) AS clinico from dual) datosClinico
ON datosPaciente.fila1 = datosClinico.fila12
LEFT JOIN (select 1 AS fila13, editor_custom.fun_datos_campo_formulario($P{atencion},415310) AS quirurgico from dual) datosQuirurgico
ON datosPaciente.fila1 = datosQuirurgico.fila13
LEFT JOIN (select 1 AS fila14, editor_custom.fun_datos_campo_formulario($P{atencion},415313) AS neonatologico from dual) datosNeonatologico
ON datosPaciente.fila1 = datosNeonatologico.fila14
LEFT JOIN (select 1 AS fila15, editor_custom.fun_datos_campo_formulario($P{atencion},415316) AS ginecoObstetrico from dual) datosGinecoObstetrico
ON datosPaciente.fila1 = datosGinecoObstetrico.fila15
LEFT JOIN (select 1 AS fila16, a.cd_cid_motivo AS diagnosticoCIE10, a.ds_cid_motivo AS motivoTranfusion
	from editor_custom.t_solicitud_hemo a
	where a.cd_atendimento=$P{atencion} and
	a.cd_pre_med=$P{prescripcion} and
	a.cd_secuencial in (select max(aa.cd_secuencial)
						from editor_custom.t_solicitud_hemo aa
						where a.cd_atendimento=aa.cd_atendimento and
						a.cd_pre_med=aa.cd_pre_med)) datosMotivoTranfusion
ON datosPaciente.fila1 = datosMotivoTranfusion.fila16
LEFT JOIN (select 1 AS fila18, decode(a.prioridad,'EMERGENCIA (5 min)','X','') AS emergencia_5
			from editor_custom.t_solicitud_hemo a
			where a.cd_atendimento=$P{atencion} and
			a.cd_pre_med=$P{prescripcion} and
			a.cd_secuencial in (select max(aa.cd_secuencial)
							     from editor_custom.t_solicitud_hemo aa
							     where a.cd_atendimento=aa.cd_atendimento and 
								 a.cd_pre_med=aa.cd_pre_med)) datosEmergencia
ON datosPaciente.fila1 = datosEmergencia.fila18
LEFT JOIN (select 1 AS fila19, decode(a.prioridad,'URGENCIA (15 min)','X','') AS urgencia_15
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosUrgencia
ON datosPaciente.fila1 = datosUrgencia.fila19
LEFT JOIN (select 1 AS fila20, decode(a.prioridad,'RUTINA (45 min)','X','') AS rutina_45
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosRutina
ON datosPaciente.fila1 = datosRutina.fila20
LEFT JOIN (select 1 AS fila21, decode(a.prioridad,'ALISTAR','X','') AS alistar
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosAlistar
ON datosPaciente.fila1 = datosAlistar.fila21
LEFT JOIN (select 1 AS fila22, a.fecha_alistar, a.hora_alistar
			from editor_custom.t_solicitud_hemo a
			where a.cd_atendimento=$P{atencion} and
			a.cd_pre_med=$P{prescripcion} and
			a.cd_secuencial in ( select max(aa.cd_secuencial)
							     from editor_custom.t_solicitud_hemo aa
							     where a.cd_atendimento=aa.cd_atendimento and 
								 a.cd_pre_med=aa.cd_pre_med)) datosFechaHoraAlistar
ON datosPaciente.fila1 = datosFechaHoraAlistar.fila22
LEFT JOIN (select 1 AS fila23, decode(a.transf_anterior,'SI','X','') AS tranfusionesAnteriores_SI
							from editor_custom.t_solicitud_hemo a
							where a.cd_atendimento=$P{atencion} and
							      a.cd_pre_med=$P{prescripcion} and
							      a.cd_secuencial in ( select max(aa.cd_secuencial)
							                           from editor_custom.t_solicitud_hemo aa
							                           where a.cd_atendimento=aa.cd_atendimento and
							                                 a.cd_pre_med=aa.cd_pre_med)) datosTranfusionesAnteriores_SI
ON datosPaciente.fila1 = datosTranfusionesAnteriores_SI.fila23
LEFT JOIN (select 1 AS fila24, decode(a.transf_anterior,'NO','X','') AS tranfusionesAnteriores_NO
						   from editor_custom.t_solicitud_hemo a
						   where a.cd_atendimento=$P{atencion} and
							      a.cd_pre_med=$P{prescripcion} and
							      a.cd_secuencial in ( select max(aa.cd_secuencial)
							                           from editor_custom.t_solicitud_hemo aa
							                           where a.cd_atendimento=aa.cd_atendimento and
							                                 a.cd_pre_med=aa.cd_pre_med)) datosTranfusionesAnteriores_NO
ON datosPaciente.fila1 = datosTranfusionesAnteriores_NO.fila24
LEFT JOIN (select 1 AS fila25, decode(a.tiempo_transf_anterior,'< DE 2 MESES','X','') AS menosdosmeses 
							from editor_custom.t_solicitud_hemo a
							where a.cd_atendimento=$P{atencion} and
							      a.cd_pre_med=$P{prescripcion} and
							      a.cd_secuencial in ( select max(aa.cd_secuencial)
							                           from editor_custom.t_solicitud_hemo aa
							                           where a.cd_atendimento=aa.cd_atendimento and
							                                 a.cd_pre_med=aa.cd_pre_med)) datosMenosdosmeses
ON datosPaciente.fila1 = datosMenosdosmeses.fila25
LEFT JOIN (select 1 AS fila26, decode(a.tiempo_transf_anterior,'3-5 MESES','X','') AS tresacincomeses 
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosTresacincomeses
ON datosPaciente.fila1 = datosTresacincomeses.fila26
LEFT JOIN (select 1 AS fila27, decode(a.tiempo_transf_anterior,'6-9 MESES','X','') AS seisanuevemeses 
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosSeisanuevemeses
ON datosPaciente.fila1 = datosSeisanuevemeses.fila27
LEFT JOIN (select 1 AS fila28, decode(a.tiempo_transf_anterior,'9-12 MESES','X','') AS nueveadocemeses
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosNueveadocemeses
ON datosPaciente.fila1 = datosNueveadocemeses.fila28
LEFT JOIN (select 1 AS fila29, decode(a.tiempo_transf_anterior,'> 12 MESES','X','') AS masdocemeses
						from editor_custom.t_solicitud_hemo a
						where a.cd_atendimento=$P{atencion} and
						      a.cd_pre_med=$P{prescripcion} and
						      a.cd_secuencial in ( select max(aa.cd_secuencial)
						                           from editor_custom.t_solicitud_hemo aa
						                           where a.cd_atendimento=aa.cd_atendimento and
						                                 a.cd_pre_med=aa.cd_pre_med)) datosMasdocemeses
ON datosPaciente.fila1 = datosMasdocemeses.fila29
LEFT JOIN (select 1 AS fila47, decode(a.reaccion_adversa,'SI','X','') AS reaccionesAdversa_SI 
from editor_custom.t_solicitud_hemo a
where a.cd_atendimento=$P{atencion} and
      a.cd_pre_med=$P{prescripcion} and
      a.cd_secuencial in ( select max(aa.cd_secuencial)
                           from editor_custom.t_solicitud_hemo aa
                           where a.cd_atendimento=aa.cd_atendimento and
                                 a.cd_pre_med=aa.cd_pre_med)) datosReaccionesAdversa_SI
ON datosPaciente.fila1 = datosReaccionesAdversa_SI.fila47
LEFT JOIN (select 1 AS fila30, decode(a.reaccion_adversa,'NO','X','') AS reaccionesAdversa_NO
from editor_custom.t_solicitud_hemo a
where a.cd_atendimento=$P{atencion} and
      a.cd_pre_med=$P{prescripcion} and
      a.cd_secuencial in ( select max(aa.cd_secuencial)
                           from editor_custom.t_solicitud_hemo aa
                           where a.cd_atendimento=aa.cd_atendimento and
                                 a.cd_pre_med=aa.cd_pre_med)) datosReaccionesAdversa_NO
ON datosPaciente.fila1 = datosReaccionesAdversa_NO.fila30
LEFT JOIN (select 1 AS fila31, a.hemoglobina AS hemoglobina, a.hematrocrito AS hematocrito, a.plaquetas AS plaquetas, a.tp AS tp, a.ttp AS ttp, a.grupo_abo_rh AS grupo_abo_rh, a.otros AS otros 
from editor_custom.t_solicitud_hemo a
where a.cd_atendimento=$P{atencion} and
a.cd_pre_med=$P{prescripcion} and
a.cd_secuencial in (select max(aa.cd_secuencial)
					from editor_custom.t_solicitud_hemo aa
					where a.cd_atendimento=aa.cd_atendimento and
					a.cd_pre_med=aa.cd_pre_med)) datosLaboratorio
ON datosPaciente.fila1 = datosLaboratorio.fila31
LEFT JOIN (select 1 AS fila32, sum(i.qt_itpre_med) AS CGRE_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CGRE_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (1244) and
				  a.cd_pre_med=$P{prescripcion} and 
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCGRE
ON datosPaciente.fila1 = datosCGRE.fila32				  
LEFT JOIN (select 1 AS fila33, sum(i.qt_itpre_med) AS CGRSCLp_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CGRSCLp_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18260) and
				  a.cd_pre_med=$P{prescripcion} and 
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCGRSCLp
ON datosPaciente.fila1 = datosCGRSCLp.fila33				  
LEFT JOIN (select 1 AS fila34, sum(i.qt_itpre_med) AS CGRL_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CGRL_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18261) and
				  a.cd_pre_med=$P{prescripcion} and 
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCGRL
ON datosPaciente.fila1 = datosCGRL.fila34				  
LEFT JOIN (select 1 AS fila35, sum(i.qt_itpre_med) AS CGRP_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CGRP_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18264) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCGRP
ON datosPaciente.fila1 = datosCGRP.fila35				  
LEFT JOIN (select 1 AS fila36, count(i.qt_itpre_med) AS CGRPSCLp_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(count(i.qt_itpre_med),1)) AS CGRPSCLp_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18262) and
				  a.cd_pre_med=$P{prescripcion} and 
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade
  			having count(i.qt_itpre_med) > 0) datosCGRPSCLp
ON datosPaciente.fila1 = datosCGRPSCLp.fila36				  
LEFT JOIN (select 1 AS fila37, count(i.qt_itpre_med) AS CGRPL_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(count(i.qt_itpre_med),1)) AS CGRPL_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18263) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade
  			having count(i.qt_itpre_med) > 0) datosCGRPL
ON datosPaciente.fila1 = datosCGRPL.fila37				  
LEFT JOIN (select 1 AS fila38, sum(i.qt_itpre_med) AS CGRI_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CGRI_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18265) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCGRI
ON datosPaciente.fila1 = datosCGRI.fila38				  
LEFT JOIN (select 1 AS fila39, sum(i.qt_itpre_med) AS CP_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CP_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18269) and
				  a.cd_pre_med=$P{prescripcion} and 
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCP
ON datosPaciente.fila1 = datosCP.fila39				  
LEFT JOIN (select 1 AS fila40, sum(i.qt_itpre_med) AS CPA_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CPA_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18280) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCPA
ON datosPaciente.fila1 = datosCPA.fila40				  
LEFT JOIN (select 1 AS fila41, sum(i.qt_itpre_med) AS PFC_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS PFC_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18276) and
				  a.cd_pre_med=$P{prescripcion} and 
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosPFC
ON datosPaciente.fila1 = datosPFC.fila41				  
LEFT JOIN (select 1 AS fila42, sum(i.qt_itpre_med) AS CRIO_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS CRIO_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18275) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosCRIO
ON datosPaciente.fila1 = datosCRIO.fila42				  
LEFT JOIN (select 1 AS fila43, sum(i.qt_itpre_med) AS PR_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS PR_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18285) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosPR
ON datosPaciente.fila1 = datosPR.fila43				  
LEFT JOIN (select 1 AS fila44, sum(i.qt_itpre_med) AS SR_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS SR_letras
			from pre_med a, pw_documento_clinico p, itpre_med i, uni_presc u, itunidade it
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18267) and
				  a.cd_pre_med=$P{prescripcion} and  
				  i.cd_uni_presc=u.cd_uni_presc and
				  u.cd_itunidade=it.cd_itunidade) datosSR
ON datosPaciente.fila1 = datosSR.fila44				  
LEFT JOIN (select 1 AS fila45, sum(i.qt_itpre_med) AS OTROS_numero, 
			upper(editor_custom.numero_letras_sin_decimales.Letras(sum(i.qt_itpre_med),1)) AS OTROS_letras
			from pre_med a, pw_documento_clinico p, itpre_med i
			where a.cd_atendimento=$P{atencion} and
				  a.cd_documento_clinico=p.cd_documento_clinico and
				  p.tp_status='FECHADO' and
				  a.tp_pre_med='M' and
				  a.cd_objeto <> 436 and
				  i.cd_pre_med=a.cd_pre_med and
				  i.cd_tip_esq='HEM' and
				  nvl(i.sn_cancelado,'N')='N' and
				  i.cd_tip_presc in (18270,18271,18272,18273,18277,18278,18281,18282) and
				  a.cd_pre_med=$P{prescripcion}) datosOTROS
ON datosPaciente.fila1 = datosOTROS.fila45				  
LEFT JOIN (select 1 AS fila46, u.nm_usuario nombreMedico, u.cd_identificador_pessoa codigoMedico,
to_char(pm.hr_pre_med,'dd') dia_p, to_char(pm.hr_pre_med,'mm') mes_p, to_char(pm.hr_pre_med,'yyyy') anio_p
			from pre_med pm, usuarios u
			where upper(nvl(pm.nm_usuario_autorizador,pm.nm_usuario))=u.cd_usuario and
			pm.cd_pre_med=$P{prescripcion}) datoscodigoMedico
ON datosPaciente.fila1 = datoscodigoMedico.fila46