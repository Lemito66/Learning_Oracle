create table T_EXAMEN_FISICO_NEO
(
  cd_formulario               CHAR(5),
  cd_atendimento              NUMBER(10),
  fecha_registro              DATE,
  tipo_examen_fisico          NVARCHAR2(50),
  observaciones_examen_fisico NVARCHAR2(50),
  sp_cp                       CHAR(2),
  usuario                     NVARCHAR2(100),
  inicial_egreso                 NVARCHAR2(50),
  CD_EXAMEN_FISICO_NEO            NUMBER DEFAULT sec_EXAMEN_FISICO_NEO.nextval PRIMARY KEY
  
)

CREATE SEQUENCE sec_EXAMEN_FISICO_NEO
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999


create index IDX_T_EXAMEN_FISICO_neo on T_EXAMEN_FISICO_NEO (CD_FORMULARIO, CD_ATENDIMENTO, TIPO_EXAMEN_FISICO)