-- Create table
create table T_AUTORIZACION_ANTIBIOTICOS
(
  cd_formulario               CHAR(5),
  cd_atendimento              NUMBER(10) not null,
  cd_prescripcion             NUMBER(10) not null,
  fecha_registro              DATE,
  usuario                     NVARCHAR2(100),
  cd_documento_clinico        NUMBER(10),
  diagnostico_de_ingreso      CLOB,
  servicio_solicitante        NVARCHAR2(200),
  medico_tratante_solicitante NVARCHAR2(200),
  tipo_infeccion              NVARCHAR2(200),
  microorganismos_1           NVARCHAR2(200),
  microorganismos_2           NVARCHAR2(200),
  microorganismos_3           NVARCHAR2(200),
  microorganismos_4           NVARCHAR2(200),
  sensibilidad_1              NVARCHAR2(200),
  sensibilidad_2              NVARCHAR2(200),
  sensibilidad_3              NVARCHAR2(200),
  sensibilidad_4              NVARCHAR2(200),
  antibioticos_usados_prev    NVARCHAR2(1500),
  otros_criterios             NVARCHAR2(1500),
  antibiotico_radio           NVARCHAR2(200),
  estado                      NVARCHAR2(50),
  cd_secuencial               NUMBER default "EDITOR_CUSTOM"."SEC_T_AUTORIZACION_ANTI"."NEXTVAL" not null,
  motivo                      NVARCHAR2(150)
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
alter table T_AUTORIZACION_ANTIBIOTICOS
  add constraint PK_AUTORIZACION_ANTIBIOTICOS primary key (CD_SECUENCIAL, CD_PRESCRIPCION)
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
