select f.ds_formula,
         to_char(t.dh_avaliacao,'dd/mm/yyyy hh24:mi') fecha,
         t.vl_resultado
    from pagu_avaliacao t,
         pagu_formula f,
         pw_documento_clinico pw
    where t.cd_atendimento=117598 and -- número de atención
          t.cd_formula=f.cd_formula and
          --f.tp_formula='M' and
          t.cd_documento_clinico=pw.cd_documento_clinico and
          pw.tp_status='FECHADO'
    order by t.dh_avaliacao ;
