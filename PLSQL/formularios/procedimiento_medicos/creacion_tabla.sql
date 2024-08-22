create table T_PROCEDIMIENTOS_MEDICOS
(
  cd_formulario          CHAR(5),
  cd_atendimento         NUMBER(10) not null,
  fecha_registro         DATE,
  fecha_inicio           DATE,
  fecha_cambio           DATE,
  fecha_retiro           DATE,
  nombre_medico          varchar2(150),
  usuario                NVARCHAR2(100),
  cd_documento_clinico   NUMBER(10),
  tipo                   VARCHAR2(100),
  localizacion           VARCHAR2(50),
  cuidados               CLOB,
  
  cd_registro_secuencial NUMBER(10) not null
  
)