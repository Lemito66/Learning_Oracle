CREATE SEQUENCE sec_antecedente_familiares
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999
-- Create table
-- Create table
create table T_ANTECEDENTES_FAMILIARES
(
  cd_formulario             CHAR(5),
  cd_atendimento            NUMBER(10) not null,
  fecha_registro            DATE,
  usuario                   NVARCHAR2(100),
  cd_documento_clinico      NUMBER(10),
  madre                     NVARCHAR2(100),
  padre                     NVARCHAR2(100),
  otros_familiares          NVARCHAR2(100),
  antecedentes_prenatales   NVARCHAR2(200),
  horas_hidrorrea           NVARCHAR2(50),
  numero_tactos             NVARCHAR2(50),
  labor                     NVARCHAR2(50),
  cantidad                  NVARCHAR2(50),
  olor                      NVARCHAR2(50),
  caracteristicas           NVARCHAR2(50),
  sufrimiento               NVARCHAR2(50),
  fecha_nacimiento          NVARCHAR2(50),
  hora_nacimiento           NVARCHAR2(50),
  fecha_ultima_menstruacion NVARCHAR2(50),
  capurro                   NVARCHAR2(50),
  eco_extrapolado           NVARCHAR2(50),
  ballard                   NVARCHAR2(50),
  cd_registro_secuencial    NUMBER default "EDITOR_CUSTOM"."SEC_ANTECEDENTE_FAMILIARES"."NEXTVAL" not null,
  gestas                    NVARCHAR2(5),
  abortos                   NVARCHAR2(5),
  partos                    NVARCHAR2(5),
  hijos_vivos               NVARCHAR2(5),
  hijos_muertos             NVARCHAR2(5),
  cesareas                  NVARCHAR2(5),
  expulsivo                NVARCHAR2(50),
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
-- Create/Recreate indexes 
create index INDEX_CD_ATENDIMENTO on T_ANTECEDENTES_FAMILIARES (CD_ATENDIMENTO)
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ANTECEDENTES_FAMILIARES
  add primary key (CD_REGISTRO_SECUENCIAL)
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