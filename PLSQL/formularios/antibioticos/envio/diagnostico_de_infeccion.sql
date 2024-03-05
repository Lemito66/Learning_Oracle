-- Create table
create table T_DIAGNOSTICO_DE_INFECCION
(
  cd_formulario            CHAR(5),
  cd_atendimento           NUMBER(10) not null,
  fecha_registro           DATE,
  usuario                  NVARCHAR2(100),
  cd_documento_clinico     NUMBER(10),
  diagnostico_de_infeccion NVARCHAR2(100),
  cd_registro_secuencial   NUMBER(10) not null,
  cd_prescripcion          number(10),
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DIAGNOSTICO_DE_INFECCION
  add constraint PK_DIAGNOSTICO_DE_INFECCION primary key (CD_ATENDIMENTO, CD_REGISTRO_SECUENCIAL)
  using index 
  tablespace MVEDITOR_CUSTOM_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select, insert, update, delete, references, alter, index, debug, read on T_DIAGNOSTICO_DE_INFECCION to ACESSOPRD;
grant select, insert, update, delete, references, alter, index, debug, read on T_DIAGNOSTICO_DE_INFECCION to DBAEDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_DIAGNOSTICO_DE_INFECCION to DBAMV;
grant select, insert, update, delete, references, alter, index, debug, read on T_DIAGNOSTICO_DE_INFECCION to EDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_DIAGNOSTICO_DE_INFECCION to MEDICO;
grant select, insert, update, delete, alter, debug, read on T_DIAGNOSTICO_DE_INFECCION to MV2000;
