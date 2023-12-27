-- Create table
create table T_SONDAS_ALIMENTACION
(
  cd_formulario          NVARCHAR2(5),
  cd_atendimento         NUMBER(10) not null,
  fecha_registro         DATE,
  usuario                NVARCHAR2(100),
  cd_documento_clinico   NUMBER(10),
  fecha_inicio           DATE,
  fecha_cambio           DATE,
  fecha_retiro           DATE,
  tipo                   NVARCHAR2(100),
  localizacion           NVARCHAR2(50),
  cuidados               CLOB,
  cd_registro_secuencial NUMBER(10) not null
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
alter table T_SONDAS_ALIMENTACION
  add constraint PK_T_SONDAS_ALIMENTACION primary key (CD_ATENDIMENTO, CD_REGISTRO_SECUENCIAL)
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
grant select, insert, update, delete, references, alter, index, debug, read on T_SONDAS_ALIMENTACION to ACESSOPRD;
grant select, insert, update, delete, references, alter, index, debug, read on T_SONDAS_ALIMENTACION to DBAEDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_SONDAS_ALIMENTACION to DBAMV;
grant select, insert, update, delete, references, alter, index, debug, read on T_SONDAS_ALIMENTACION to EDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_SONDAS_ALIMENTACION to MEDICO;
grant select, insert, update, delete, alter, debug, read on T_SONDAS_ALIMENTACION to MV2000;
