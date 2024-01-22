select
      to_char(t1.dh_criacao, 'dd-mm-yyyy hh24:mi') fecha,
      t2.ds_tip_esq grupo,
      t2.cd_tip_esq tipo,
      decode(t2.cd_tip_esq, 
      'MDN',fun_prescripcion_mdn_mdo_mda(t4.cd_itpre_med), 
      'MDO',fun_prescripcion_mdn_mdo_mda(t4.cd_itpre_med),
      'MDA',fun_prescripcion_mdn_mdo_mda(t4.cd_itpre_med),
      'SOR', FUN_PRESCRIPCION_BOMBAS(t4.cd_itpre_med),
      'HEM', FUN_PRESCRIPCION_HEM(t4.cd_itpre_med),
      'EXI', FUN_PRESCRIPCION_EXI(t4.cd_itpre_med),
      'EXL', FUN_PRESCRIPCION_EXL(t4.cd_itpre_med),
      'IC', fun_prescripcion_interconsulta(t4.cd_itpre_med),
      'NE', fun_prescripcion_nutri_enteral(t4.cd_itpre_med),
      'PME', fun_prescripcion_procedi(t4.cd_itpre_med),
      'PEN', fun_prescripcion_proced_enf(t4.cd_itpre_med),
      'ED', fun_prescripcion_educacion(t4.cd_itpre_med),
      'BIC', fun_prescripcion_bomb_infu(t4.cd_itpre_med),
      'AV', fun_prescripcion_apoyo_venti(t4.cd_itpre_med),
      fun_prescripcion_otros(t4.cd_itpre_med)
      ) prescripcion
      
from
      pre_med t1,
      itpre_med t4,
      tip_presc t7,
      dbamv.pw_observacao_predefinida t8,
      tip_fre t9,
      tip_esq t2,
      uni_pro u,
      for_apl t10,
      uni_presc t11,
      unidade t12,
      pw_grupo_item_prescricao t13,
      pw_sub_grupo_prescricao t14,
      uni_pro t15,
      atendime a,
      pw_dispositivo dis,
      itunidade itu
where
      FUN_VALIDA_FECHA_HORA(t1.dh_criacao, sysdate) = 1 and 
      t1.cd_atendimento = a.cd_atendimento
      and t1.cd_pre_med = t4.cd_pre_med
      and t4.cd_tip_presc = t7.cd_tip_presc
      and t7.cd_observacao_predefinida = t8.cd_observacao_predefinida (+)
      and t4.cd_tip_fre = t9.cd_tip_fre (+)
      and t7.cd_tip_esq = t2.cd_tip_esq
      and t1.cd_atendimento = 117598 -- numero de atencion
      and (
            (nvl(t4.sn_cancelado, 'N') = 'N')
            or (
                  nvl(t4.sn_cancelado, 'N') = 'S'
                  and t4.cd_itpre_med_canc is not null
            )
      )
      and t1.ds_evolucao is null
      and t4.cd_uni_pro = u.cd_uni_pro (+)
      and t4.cd_for_apl = t10.cd_for_apl (+)
      and t4.cd_uni_presc = t11.cd_uni_presc (+)
      and t11.cd_unidade = t12.cd_unidade (+)
      and t4.cd_tip_esq = t13.cd_tip_esq (+)
      and t4.cd_tip_presc = t13.cd_tip_presc (+)
      and t13.cd_grupo_prescricao = t14.cd_grupo_prescricao (+)
      and t13.cd_sub_grupo_prescricao = t14.cd_sub_grupo_prescricao (+)
      and t4.cd_uni_pro_inf = t15.cd_uni_pro (+)
      and t4.cd_dispositivo = dis.cd_dispositivo (+)
      and t11.cd_itunidade = itu.cd_itunidade (+)
order by
      t4.cd_itpre_med;
