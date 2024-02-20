CREATE
OR REPLACE PROCEDURE PRC_INSERTA_T_EXAMEN_FISI_NEO (
    v_cd_formulario CHAR,
    v_cd_atendimento NUMBER,
    v_fecha_registro DATE,
    v_tipo_examen_fisico NVARCHAR2,
    v_observaciones_examen_fisico NVARCHAR2,
    v_sp_cp CHAR,
    v_usuario NVARCHAR2,
    v_inicial_egreso NVARCHAR2
) IS
BEGIN
if v_inicial_egreso like '%INICIAL%' then 
        delete from T_EXAMEN_FISICO_NEO
        where
            cd_atendimento = v_cd_atendimento
            and tipo_examen_fisico = v_tipo_examen_fisico
            and cd_formulario = v_cd_formulario;
    end if;
insert into
    T_EXAMEN_FISICO_NEO (
        CD_FORMULARIO,
        CD_ATENDIMENTO,
        FECHA_REGISTRO,
        TIPO_EXAMEN_FISICO,
        OBSERVACIONES_EXAMEN_FISICO,
        SP_CP,
        USUARIO,
        inicial_egreso
    )
values
    (
        v_cd_formulario,
        v_cd_atendimento,
        v_fecha_registro,
        v_tipo_examen_fisico,
        replace(v_observaciones_examen_fisico, chr(39), ' '),
        v_sp_cp,
        v_usuario,
        v_inicial_egreso
    );

/* Confirmar los cambios */
COMMIT;

EXCEPTION WHEN OTHERS THEN NULL;

END PRC_INSERTA_T_EXAMEN_FISI_NEO;