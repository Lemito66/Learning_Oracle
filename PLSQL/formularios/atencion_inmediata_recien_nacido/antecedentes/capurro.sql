select
    T.Vl_Resultado
from
    pagu_avaliacao t,
    pagu_formula f,
    pw_documento_clinico pw
where
    t.cd_atendimento = 93217
    and t.cd_formula = f.cd_formula
    and t.cd_formula in (83)
    and t.cd_documento_Clinico = pw.cd_documento_clinico
    and pw.tp_status = 'FECHADO'
    and t.cd_avaliacao in (
        select
            max(tt.cd_avaliacao)
        from
            pagu_avaliacao tt,
            pw_documento_clinico w
        where
            tt.cd_atendimento = t.cd_atendimento
            and tt.cd_documento_clinico = w.cd_documento_clinico
            and w.tp_status = 'FECHADO'
            and tt.cd_formula = t.cd_formula
    )
order by
    f.cd_formula;

select * from T_ANTECEDENTE_PERS_FAM where cd_atendimento = 654 and tipo_antecedente like '%2 ENFERMEDAD PERINATAL%' order by cd_antecedente desc
fetch first 1 rows only;