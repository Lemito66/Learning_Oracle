-- Add/modify columns 
alter table T_EMERGENCIA add custodia_policial CHAR(2);
alter table T_EMERGENCIA add notificacion CHAR(2);
alter table T_EMERGENCIA add vivo VARCHAR2(10);
alter table T_EMERGENCIA add fallecido_egreso VARCHAR2(10);
alter table T_EMERGENCIA add estable_egreso VARCHAR2(10);
alter table T_EMERGENCIA add inestable_egreso VARCHAR2(10);
alter table T_EMERGENCIA add alta_definitiva VARCHAR2(10);
alter table T_EMERGENCIA add consulta VARCHAR2(10);
alter table T_EMERGENCIA add observacion_emergencia VARCHAR2(10);
alter table T_EMERGENCIA add hospitalizacion VARCHAR2(10);
alter table T_EMERGENCIA add referencia VARCHAR2(10);
alter table T_EMERGENCIA add referencia_inversa VARCHAR2(10);
alter table T_EMERGENCIA add derivacion VARCHAR2(10);
alter table T_EMERGENCIA add establecimiento VARCHAR2(30);
alter table T_EMERGENCIA add alta_voluntaria VARCHAR2(10);
alter table T_EMERGENCIA add retiro_sin_autorizacion VARCHAR2(10);
alter table T_EMERGENCIA add morgue VARCHAR2(10);
alter table T_EMERGENCIA add funeraria VARCHAR2(10);
alter table T_EMERGENCIA add medicina_legal VARCHAR2(10);
alter table T_EMERGENCIA add observaciones VARCHAR2(50);
alter table T_EMERGENCIA add dias_de_reposo VARCHAR2(30);
alter table T_EMERGENCIA add CD_DOCUMENTO_CLINICO NUMBER(10);
