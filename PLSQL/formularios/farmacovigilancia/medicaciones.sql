select
    *
from
    tip_presc
where
    cd_tip_esq in ('MDO', 'MDN', 'MDA',  -- Medicamentos
                'BIC', 'BES', 'PED',  -- Infusiones
                'GAS') -- Terapia Respiratoria