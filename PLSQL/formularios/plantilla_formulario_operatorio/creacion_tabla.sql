CREATE SEQUENCE sec_plantilla_formulario_operatorio
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999


CREATE TABLE  (
  id NUMBER DEFAULT sec_plantilla_formulario_operatorio.nextval PRIMARY KEY,
  ds_plantilla VARCHAR2(100) ,
  cd_cirujano number,
  cd_crea number,
  fecha_creacion date,
  fecha_actualizacion date,
  cd_actualiza number,
  diagnostico_pre_operatorio varchar2 (4000),
  diagnostico_post_operatorio varchar2 (4000),
  operacion_proyectada varchar2 (4000),
  operacion_realizada varchar2 (4000),
  programacion varchar2 (4000),
  dieresis varchar2 (4000),
  exposicion varchar2 (4000),
  hallazgos varchar2 (4000),
  procedimiento_quirurgico clob,
  complicaciones varchar2 (4000),
  sangrado varchar2 (4000),
  cultivo varchar2 (4000),
  patologia varchar2 (4000),
  ortesis_protesis varchar2 (4000),
  drenajes varchar2 (4000),
  otros varchar2 (4000),
  destino varchar2 (4000),
  posicion varchar2 (4000),
  tipo_cirugia varchar2 (4000),
  uso_hemoderivados varchar2 (4000),
  observacion_hemoderivados varchar2 (4000),
  antibiotico_profilactico varchar2 (4000),
  tiempo_profilaxis varchar2 (4000),
  profilaxis varchar2 (4000),
  otro_antb_prof varchar2 (4000),
  dosis varchar2 (4000),
  otra_dosis_prf varchar2 (4000),
  repetir_dosis varchar2 (4000),
  tratamiento varchar2 (4000),
  observacion_tratamiento varchar2 (4000)
);