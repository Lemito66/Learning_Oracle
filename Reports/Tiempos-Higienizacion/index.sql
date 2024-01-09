SELECT DISTINCT TRUNC(b.fecha) fecha, a.cd_leito, a.ds_leito, b.usuario, e.alta_clinica alta_clinica_gema, e.hora_alta alta_hospitalaria_gema,

f.hr_alta_medica alta_clinica_mv, f.hr_alta alta_hospitalaria_mv, b.tipo_movimiento, b.fecha fecha_inicio_hig,

(SELECT b1.fecha

FROM  itg_higienizacion b1

WHERE TRUNC(b1.fecha)    = TRUNC(b.fecha) AND

       b1.cd_leito        = b.cd_leito     AND

       b1.tipo_movimiento = 2              AND

       b1.fecha           > b.fecha        AND

       ROWNUM             = 1) fecha_fin_hig

FROM leito a, itg_higienizacion b, mov_int c, mv_itg_admision@db_gema d, cad_admisiones@db_gema e, atendime f

WHERE 
a.cd_leito = 65 and 
b.fecha between trunc(sysdate -1 ) and trunc(sysdate)  and 

a.cd_leito  = b.cd_leito           AND


b.tipo_movimiento = 1                    AND

b.cd_leito        = c.cd_leito           AND

(b.fecha BETWEEN c.hr_mov_int AND c.hr_lib_mov OR  

b.fecha >= c.hr_mov_int AND c.hr_lib_mov IS NULL) AND

c.cd_atendimento  = d.aten_mv            AND

d.desc_error      IS NULL                AND

d.hc_mv || '01'   = e.pk_fk_paciente     AND

d.adm_gema        = e.pk_numero_admision AND

c.cd_atendimento  = f.cd_atendimento

UNION ALL

SELECT DISTINCT TRUNC(b.fecha) fecha, a.cd_leito, a.ds_leito, b.usuario, e.alta_clinica alta_clinica_gema, e.hora_alta alta_hospitalaria_gema,

f.hr_alta_medica alta_clinica_mv, f.hr_alta alta_hospitalaria_mv, b.tipo_movimiento, b.fecha fecha_mant, NULL

FROM leito a, itg_higienizacion b, mov_int c, mv_itg_admision@db_gema d, cad_admisiones@db_gema e, atendime f

WHERE a.cd_leito  = b.cd_leito           AND

b.tipo_movimiento = 3                    AND

b.cd_leito        = c.cd_leito           AND

(b.fecha BETWEEN c.hr_mov_int AND c.hr_lib_mov OR

b.fecha >= c.hr_mov_int AND c.hr_lib_mov IS NULL) AND

c.cd_atendimento  = d.aten_mv            AND

d.desc_error      IS NULL                AND

d.hc_mv || '01'   = e.pk_fk_paciente     AND

d.adm_gema        = e.pk_numero_admision AND

c.cd_atendimento  = f.cd_atendimento

ORDER BY 2, 10