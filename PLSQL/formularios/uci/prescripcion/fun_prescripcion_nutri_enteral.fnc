create
or replace function fun_prescripcion_nutri_enteral (vAtendimento number) return clob is vResultado clob;

begin
SELECT
  upper(
    nvl(t7.ds_obs_adicional, t7.ds_tip_presc) || ' ' || t4.qt_itpre_med || ' ' || u.ds_unidade_presc || ' ' || decode(
      trim(t10.ds_for_apl),
      'NO APLICA',
      ' ',
      t10.ds_for_apl
    ) || ' ' || t4.qt_infusao || ' ' || decode(
      trim(t9.ds_tip_fre),
      'NO APLICA',
      ' ',
      t9.ds_tip_fre
    ) || ' ' || t4.ds_itpre_med
  ) prescripcion_ne INTO vResultado
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
  t1.cd_atendimento = a.cd_atendimento
  and t1.cd_pre_med = t4.cd_pre_med
  and t4.cd_tip_presc = t7.cd_tip_presc
  and t7.cd_observacao_predefinida = t8.cd_observacao_predefinida (+)
  and t4.cd_tip_fre = t9.cd_tip_fre (+)
  and t7.cd_tip_esq = t2.cd_tip_esq
  and t1.cd_atendimento = vAtendimento
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
  and t4.cd_tip_esq = 'HEM'
order by
  t4.cd_itpre_med;

return (vResultado);

exception when others then return null;

end fun_prescripcion_nutri_enteral;
/
