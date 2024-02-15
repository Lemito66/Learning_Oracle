-- Create table
create table T_ANTECEDENTES_PATO_FAMILIARES
(
  cd_formulario          CHAR(5),
  cd_atendimento         NUMBER(10) not null,
  fecha_registro         DATE,
  usuario                NVARCHAR2(100),
  cd_documento_clinico   NUMBER(10),
  tipo_parto             NVARCHAR2(100),
  condicion_parto        NVARCHAR2(100),
  edad_actual            NVARCHAR2(3),
  observaciones          NVARCHAR2(150),
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
alter table T_ANTECEDENTES_PATO_FAMILIARES
  add constraint PK_ANTECEDENTES_PATO_ primary key (CD_ATENDIMENTO, CD_REGISTRO_SECUENCIAL)
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
grant select, insert, update, delete, references, alter, index, debug, read on T_ANTECEDENTES_PATO_FAMILIARES to ACESSOPRD;
grant select, insert, update, delete, references, alter, index, debug, read on T_ANTECEDENTES_PATO_FAMILIARES to DBAEDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_ANTECEDENTES_PATO_FAMILIARES to DBAMV;
grant select, insert, update, delete, references, alter, index, debug, read on T_ANTECEDENTES_PATO_FAMILIARES to EDITOR;
grant select, insert, update, delete, alter, debug, read on T_ANTECEDENTES_PATO_FAMILIARES to MV2000;
