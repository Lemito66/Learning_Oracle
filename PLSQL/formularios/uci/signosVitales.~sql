select
    i.data_coleta fecha_toma,
    j.ds_sinal_vital signo_vital,
    h.valor
from
    dbamv.itcoleta_sinal_vital h,
    dbamv.coleta_sinal_vital i,
    dbamv.sinal_vital j,
    pw_documento_clinico pw
where
    i.cd_atendimento = 117598
    and h.cd_coleta_sinal_vital = i.cd_coleta_sinal_vital
    and h.cd_sinal_vital = j.cd_sinal_vital
    and h.valor is not null
    and i.cd_documento_clinico = pw.cd_documento_clinico
    and pw.tp_status = 'FECHADO'
    and j.cd_sinal_vital in (
        11,
        38,
        4,
        5,
        6,
        2,
        47,
        48,
        49,
        50,
        77,
        46,
        1,
        51,
        59,
        61,
        60,
        62,
        63,
        58,
        86,
        52,
        84,
        85,
        79,
        97,
        7,
        42,
        43,
        96,
        26,
        17
    )
    /* Falta indice cardiaco, INDICE DE RESISTENCIA VASCULARES SISTEMICA PULMONAR, 
    DO2-V02, PRESION CAPILAR PULMONAR,ETCO2, 
    AIRE COMPRIMIDO , OXIDO NITRICO PARTES POR MILLON, HELOX LITIO, peso ideal, PPC, acido láctico  */
    -- FALTA BALANCE HIDRICO, VER ESTO LUEGO !!!!!!!!!