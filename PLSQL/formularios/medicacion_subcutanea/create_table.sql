-- Create table
create table T_PRO_MEDICACION_SUBCU
(
  cd_atendimento NUMBER(10),
  codigo         NUMBER,
  fecha_registro DATE,
  usuario        NVARCHAR2(100),
  aplicacion     NVARCHAR2(50),
  comentario    NVARCHAR2(100)
)
tablespace MVEDITOR_CUSTOM_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select on T_PRO_MEDICACION_SUBCU to DBAEDITOR;
grant select on T_PRO_MEDICACION_SUBCU to DBAMV;
grant select on T_PRO_MEDICACION_SUBCU to EDITOR;
grant select on T_PRO_MEDICACION_SUBCU to MV2000;
