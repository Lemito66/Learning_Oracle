create
or replace procedure PCR_INSERT_PRO_MEDI_SUBCU (
    v_cd_atendimento NUMBER,
    v_codigo NUMBER,
    v_fecha_registro DATE,
    v_usuario NVARCHAR2,
    v_aplicacion NUMBER,
    v_comentario NVARCHAR2,
    v_medicamento NVARCHAR2
) is maxCodigo NUMBER;

begin if v_codigo is null then
-- MAXIMO CODIGO
begin
select
    max(codigo) into maxCodigo
from
    T_PRO_MEDICACION_SUBCU
where
    cd_atendimento = v_cd_atendimento;

exception when others then maxCodigo := 0;

end;

-- INSERCION DEL REGISTRO NUEVO
begin
insert into
    T_PRO_MEDICACION_SUBCU (
        cd_atendimento,
        codigo,
        fecha_registro,
        usuario,
        aplicacion,
        comentario,
        medicamento
    )
values
    (
        v_cd_atendimento,
        nvl(maxCodigo, 0) + 1,
        v_fecha_registro,
        v_usuario,
        v_aplicacion,
        v_comentario,
        v_medicamento
    );

end;

else
begin
update T_PRO_MEDICACION_SUBCU
set
    fecha_registro = v_fecha_registro,
    usuario = v_usuario,
    aplicacion = v_aplicacion,
    comentario = v_comentario,
    medicamento = v_medicamento
where
    codigo = v_codigo
    and cd_atendimento = v_cd_atendimento;

exception when others then null;

end;

end if;

commit;

end PCR_INSERT_PRO_MEDI_SUBCU;