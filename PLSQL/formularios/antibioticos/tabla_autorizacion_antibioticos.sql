-- Create table
create table T_AUTORIZACION_ANTIBIOTICOS
(
  cd_formulario          CHAR(5),
  cd_atendimento         NUMBER(10) not null,
  cd_prescripcion        NUMBER(10) not null,
  cd_registro_secuencial NUMBER(10) not null,
  fecha_registro         DATE,
  usuario                NVARCHAR2(100),
  cd_documento_clinico   NUMBER(10),
  diagnostico_de_ingreso NVARCHAR2(4000),
  servicio_solicitante   NVARCHAR2(200),
  medico_tratante_solicitante NVARCHAR2(200),
  tipo_infeccion         NVARCHAR2(200),
  microorganimos_1       NVARCHAR2(200),
  microorganimos_2       NVARCHAR2(200),
  microorganimos_3       NVARCHAR2(200),
  microorganimos_4       NVARCHAR2(200),
  sensibilidad_1         NVARCHAR2(200),
  sensibilidad_2         NVARCHAR2(200),
  sensibilidad_3         NVARCHAR2(200),
  sensibilidad_4         NVARCHAR2(200),
  antibioticos_usados_previamente NVARCHAR2(4000),
  otros_criterios        NVARCHAR2(4000),
  antibiotico_radio      NVARCHAR2(200),
  estado                 NVARCHAR2(50)
  
  
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
alter table T_AREA_MUESTRA_INFECCION
  add constraint PK_AREA_MUESTRA_INFECCION primary key (CD_REGISTRO_SECUENCIAL, CD_PRESCRIPCION)
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
grant select, insert, update, delete, references, alter, index, debug, read on T_AREA_MUESTRA_INFECCION to ACESSOPRD;
grant select, insert, update, delete, references, alter, index, debug, read on T_AREA_MUESTRA_INFECCION to DBAEDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_AREA_MUESTRA_INFECCION to DBAMV;
grant select, insert, update, delete, references, alter, index, debug, read on T_AREA_MUESTRA_INFECCION to EDITOR;
grant select, insert, update, delete, references, alter, index, debug, read on T_AREA_MUESTRA_INFECCION to MEDICO;
grant select, insert, update, delete, alter, debug, read on T_AREA_MUESTRA_INFECCION to MV2000;
