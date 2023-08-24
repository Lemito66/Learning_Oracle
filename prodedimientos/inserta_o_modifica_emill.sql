create or replace procedure prc_inserta_t_lineas_intra (
    v_cd_formulario char,
    v_cd_atendimiento number,
    v_fecha_registro date,
    v_usuario char,
    v_cd_documento_clinico number,
    v_fecha_inicio date,
    v_tipo varchar2,
    v_localizacion varchar2,
    v_cuidados clob,
    v_fecha_curacion date,
    v_cd_registro_secuencial number
) is 
v_sec number;
begin
-- verifica si es insercion o actualizacion
if v_cd_registro_secuencial is null then
  -- calcula el siguiente secuencial
begin
  select nvl(max(cd_registro_secuencial),0) +1
  into v_sec
  from t_lineas_intravenosas
  where cd_atendimento = v_cd_atendimiento;
  
exception when others then 
  v_sec := 1;
  end;
begin
insert into
    t_lineas_intravenosas (
        cd_formulario,
        cd_atendimento,
        fecha_registro,
        usuario,
        cd_documento_clinico,
        fecha_inicio,
        tipo,
        localizacion,
        cuidados,
        fecha_curacion,
        cd_registro_secuencial
    )
values
    (
        v_cd_formulario,
        v_cd_atendimiento,
        v_fecha_registro,
        v_usuario,
        v_cd_documento_clinico,
        v_fecha_inicio,
        v_tipo,
        v_localizacion,
        v_cuidados,
        v_fecha_curacion,
        v_sec
    ); 
exception when others then
  null;
end;
else
  BEGIN
    UPDATE t_lineas_intravenosas
    SET
        cd_formulario = v_cd_formulario,
        cd_atendimento = v_cd_atendimiento,
        fecha_registro = v_fecha_registro,
        usuario = v_usuario,
        cd_documento_clinico = v_cd_documento_clinico,
        fecha_inicio = v_fecha_inicio,
        tipo = v_tipo,
        localizacion = v_localizacion,
        cuidados = v_cuidados,
        fecha_curacion = v_fecha_curacion
    WHERE
        cd_registro_secuencial = v_cd_registro_secuencial
        and cd_atendimento = v_cd_atendimiento;
  EXCEPTION
    WHEN OTHERS THEN
      NULL;
  END;
end if;

commit;

end prc_inserta_t_lineas_intra;
