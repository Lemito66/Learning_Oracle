select
    case
        when r.ds_documento is null then r.cd_identificador_pessoa
        else r.ds_documento
    end as documento
from
    responsa r,
    tip_paren t,
    paciente p,
    atendime a,
    servico s
where
    r.cd_tip_paren = t.cd_tip_paren
    and r.cd_atendimento = a.cd_atendimento
    and a.cd_paciente = p.cd_paciente
    and a.cd_servico = s.cd_servico
    and a.cd_atendimento = 115991