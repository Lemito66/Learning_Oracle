-- Add/modify columns 
alter table T_TMP_008 modify campo14 VARCHAR2(10);
alter table T_TMP_008 modify campo22 VARCHAR2(20);
alter table T_TMP_008 modify campo23 clob; -- Hay que revisar porque no se cambia a clob
alter table T_TMP_008 modify campo36 VARCHAR2(200);
alter table T_TMP_008 modify campo37 VARCHAR2(200);
alter table T_TMP_008 modify campo38 VARCHAR2(50);
alter table T_TMP_008 modify campo39 VARCHAR2(50);
alter table T_TMP_008 modify campo40 VARCHAR2(200);
alter table T_TMP_008 modify campo45 VARCHAR2(50);
alter table T_TMP_008 modify campo46 VARCHAR2(100);
alter table T_TMP_008 modify campo47 VARCHAR2(50);
alter table T_TMP_008 modify campo48 VARCHAR2(50);

-- Eliminaci�n de columna que se llama campo23
alter table T_TMP_008 drop column campo23;
-- Ahora la creamos de tipo clob
alter table T_TMP_008 add campo23 clob;

-- Eliminar el campo 49
alter table T_TMP_008 drop column campo49;
-- Creamos de tipo varchar2(10)
alter table T_TMP_008 add campo49 varchar2(10);
alter table T_TMP_008 modify campo50 VARCHAR2(10);
alter table T_TMP_008 modify campo51 VARCHAR2(10);

-- Eliminar el campo
alter table T_TMP_008 drop column campo52;
-- Creamos de tipo
alter table T_TMP_008 add campo52 clob;


alter table T_TMP_008 add campo175  varchar2(50);
alter table T_TMP_008 add campo176 varchar2(500);
alter table T_TMP_008 add campo177 varchar2(50);
alter table T_TMP_008 add campo178 varchar2(500);
alter table T_TMP_008 add campo179 varchar2(50);