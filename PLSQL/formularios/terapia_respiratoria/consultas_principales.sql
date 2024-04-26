select
    count(*)
from
    formularioterapiarespiratoria

select
    TO_date(
        JSON_VALUE (terapia.Data, '$.FECHAHOY'),
        'DD/MM/YYYY'
    )
from
    formularioterapiarespiratoria terapia


select
    *
from
    formularioterapiarespiratoria
where
    id = 9062


select
    terapia.numerodepedido,
    terapia.estado,
    terapia.id,
    JSON_VALUE (terapia.Data, '$.FECHAHOY')
from
    formularioterapiarespiratoria terapia
where
    TO_date(
        JSON_VALUE (terapia.Data, '$.FECHAHOY'),
        'DD/MM/YYYY'
    ) = Trunc(sysdate)



SELECT
    terapia.numerodepedido,
    terapia.estado,
    terapia.id,
    JSON_VALUE (terapia.Data, '$.FECHAHOY') AS fecha_json
FROM
    formularioterapiarespiratoria terapia
WHERE
    trunc(
        TO_DATE(
            JSON_VALUE (terapia.Data, '$.FECHAHOY'),
            'DD-MM-YYYY HH24:MI'
        )
    ) = TRUNC(SYSDATE);

-- Conteo por dispositivo
SELECT
    count(*),
    
    --terapia.numerodepedido,
    --terapia.estado,
    --terapia.id,
    --JSON_VALUE (terapia.Data, '$.FECHAHOY') AS fecha_json,
    JSON_VALUE(terapia.Data, '$.DISPOSITIVO')
FROM
    formularioterapiarespiratoria terapia
WHERE
    trunc(
        TO_DATE(
            JSON_VALUE (terapia.Data, '$.FECHAHOY'),
            'DD-MM-YYYY HH24:MI'
        )
    ) = TRUNC(SYSDATE)
group by JSON_VALUE(terapia.Data, '$.DISPOSITIVO')+

-- Por fechas
SELECT
    count(*) conteo,
    
    --terapia.numerodepedido,
    --terapia.estado,
    --terapia.id,
    --JSON_VALUE (terapia.Data, '$.FECHAHOY') AS fecha_json,
    JSON_VALUE(terapia.Data, '$.DISPOSITIVO') Tipo_de_dispositivo
FROM
    formularioterapiarespiratoria terapia
WHERE
    trunc(TO_DATE(JSON_VALUE (terapia.Data, '$.FECHAHOY'), 'DD-MM-YYYY HH24:MI')) between TRUNC(SYSDATE) - 1 and TRUNC(SYSDATE) -- en ves de trunc(sysdate) - 1 poner la fecha del 26 de marzo
group by JSON_VALUE(terapia.Data, '$.DISPOSITIVO')

-- Por fecha
SELECT
    count(*) conteo,
    
    --terapia.numerodepedido,
    --terapia.estado,
    --terapia.id,
    --JSON_VALUE (terapia.Data, '$.FECHAHOY') AS fecha_json,
    JSON_VALUE(terapia.Data, '$.DISPOSITIVO') Tipo_de_dispositivo
FROM
    formularioterapiarespiratoria terapia
WHERE
    trunc(TO_DATE(JSON_VALUE (terapia.Data, '$.FECHAHOY'), 'DD-MM-YYYY HH24:MI')) between TO_DATE('26/03/2020', 'DD/MM/YYYY') and TRUNC(SYSDATE) -- en ves de trunc(sysdate) - 1 poner la fecha del 26 de marzo
group by JSON_VALUE(terapia.Data, '$.DISPOSITIVO')