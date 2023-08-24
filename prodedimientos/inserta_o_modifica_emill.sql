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
begin
  select nvl(max(cd_registro_secuencial),0) +1
  into v_sec
  from t_lineas_intravenosas
  where cd_atendimento = v_cd_atendimiento;
  
exception when others then 
  v_sec := 1;
  end;
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
    ); commit;

end prc_inserta_t_lineas_intra;
