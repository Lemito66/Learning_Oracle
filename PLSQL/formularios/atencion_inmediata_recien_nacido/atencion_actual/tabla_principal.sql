CREATE SEQUENCE sec_atencion_actual_neo
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999


create table T_ATENCION_ACTUAL_NEO
(
  cd_formulario             CHAR(5),
  cd_atendimento            NUMBER(10) not null,
  fecha_registro            DATE,
  usuario                   NVARCHAR2(100),
  cd_documento_clinico      NUMBER(10),
  REANIMACION               CHAR(2)
  ESTIMULACION              CHAR(2),
  RADIO_ASPIRACION           CHAR(2),
  TUBO_ENDOTRAQUEAL         CHAR(2),
  MASAJE_CARD               CHAR(2),
  MEDICACION                CHAR(2),
  RADIO_VITAMINA_K          CHAR(2),
  RADIO_OCULAR              CHAR(2),
  REFLEJO_SUCCION                      NVARCHAR2(10),
  TOLERANCIA_ORAL           NVARCHAR2(10),
  DEPOSICION               NVARCHAR2(10),
  ORINA          NVARCHAR2(10),
  TRATAMIENTO_INICIAL           NVARCHAR2(200),
  cd_registro_secuencial    NUMBER default sec_atencion_actual_neo.nextval primary key
)


create index idx_atencion_actual_neo on T_ATENCION_ACTUAL_NEO(cd_atendimento, cd_formulario, cd_documento_clinico);