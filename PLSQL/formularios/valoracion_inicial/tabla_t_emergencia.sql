-- Añadimos nuevas columnas a la tabla T_EMERGENCIA

alter table T_EMERGENCIA add estable VARCHAR2(10);
alter table T_EMERGENCIA add inestable VARCHAR2(10);
alter table T_EMERGENCIA add fallecido VARCHAR2(10);
alter table T_EMERGENCIA add pelvis_viable VARCHAR2(20);
alter table T_EMERGENCIA add score_mama VARCHAR2(20);
