create
or replace procedure prc_inserta_t_lineas_intravenosas (
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
) is begin
insert into
    t_lineas_intravenosas (
        cd_formulario,
        cd_atendimiento,
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
        v_cd_registro_secuencial
    ) commit;

end prc_inserta_t_lineas_intravenosas;