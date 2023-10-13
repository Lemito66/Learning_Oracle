select DECODE(CONDICION, 'ESTABLE', 'true', 'false'), 
       condicion, DECODE(estable, 'true', 'true', 'false'), estable,
       DECODE(inestable, 'true', 'true', 'false'),
       DECODE(fallecido, 'true', 'true', 'false')
        CONDICION_ESTABLE from t_emergencia where cd_atendimento = 654 and cd_emergencia = 33739
        
select estable, inestable, fallecido, cd_emergencia from t_emergencia where cd_atendimento = 654

select TIPO_MOTIVO_ATENCION from t_emergencia

select * from t_emergencia
