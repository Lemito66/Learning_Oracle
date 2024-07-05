CREATE SEQUENCE sec_informacion_medicamento
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999


CREATE TABLE t_informacion_medicamento (
  id NUMBER DEFAULT sec_informacion_medicamento.nextval PRIMARY KEY,
  cd_atendimento integer,
  fecha_registro date,
  usuario nvarchar2(100),
  nombre_generico nvarchar2(100),
  nombre_comercial nvarchar2(100),
  lote nvarchar2(100),
  fecha_inicio nvarchar2(100),
  fecha_fin nvarchar2(100),
  dosis_diaria nvarchar2(100),
  via_administracion nvarchar2(100),
  indicacion nvarchar2(100)
);