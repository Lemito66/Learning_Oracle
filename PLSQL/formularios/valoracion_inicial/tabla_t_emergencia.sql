-- Añadimos nuevas columnas a la tabla T_EMERGENCIA

alter table T_EMERGENCIA add estable VARCHAR2(10);
alter table T_EMERGENCIA add inestable VARCHAR2(10);
alter table T_EMERGENCIA add fallecido VARCHAR2(10);
alter table T_EMERGENCIA add pelvis_viable VARCHAR2(20);
alter table T_EMERGENCIA add score_mama VARCHAR2(20);



-- Se hizo cambios en el procedimiento que está en el archivo procedimiento_inserta_t_emergencia.sql
-- Se hizo cambios en la regla que está en el arhivo regla.sql