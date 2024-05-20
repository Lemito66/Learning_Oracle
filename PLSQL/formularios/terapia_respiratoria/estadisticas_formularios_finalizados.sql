-- Mostrar estadisticas de formularios finalizados, cancelados y activos
select
    count(*)
from
    trespiratoria.formularioterapiarespiratoria formulario
where
    formulario.estado = 'Finalizado'


select
    count(*)
from
    trespiratoria.formularioterapiarespiratoria formulario
where
    formulario.estado = 'Cancelado'


select
    count(*)
from
    trespiratoria.formularioterapiarespiratoria formulario
where
    formulario.estado = 'Activo'


select
    *
from
    trespiratoria.formularioterapiarespiratoria formulario