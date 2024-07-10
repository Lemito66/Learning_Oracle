-- Create table
create table T_INFORMACION_MEDICAMENTO
(
  cd_atendimento         NUMBER(10),
  cd_secuencial          NUMBER(10),
  fecha_registro         DATE,
  usuario                NVARCHAR2(100),
  nombre_generico        NVARCHAR2(100),
  nombre_comercial       NVARCHAR2(100),
  lote                   NVARCHAR2(100),
  fecha_inicio           NVARCHAR2(100),
  fecha_fin              NVARCHAR2(100),
  dosis_diaria           NVARCHAR2(100),
  via_administracion     NVARCHAR2(100),
  indicacion             NVARCHAR2(100),
  cd_registro_secuencial NUMBER(10)
)

-- Grant/Revoke object privileges 
grant select on T_INFORMACION_MEDICAMENTO to DBAEDITOR;
grant select on T_INFORMACION_MEDICAMENTO to DBAMV;
grant select on T_INFORMACION_MEDICAMENTO to EDITOR;
grant select on T_INFORMACION_MEDICAMENTO to MV2000;
