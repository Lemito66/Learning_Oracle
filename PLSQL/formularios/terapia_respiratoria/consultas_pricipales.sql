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
group by JSON_VALUE(terapia.Data, '$.DISPOSITIVO')