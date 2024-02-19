CREATE OR REPLACE PROCEDURE PRC_INSERTA_T_ANT_FAMILIARES (
    V_CD_FORMULARIO CHAR,
    V_CD_ATENDIMIENTO NUMBER,
    V_FECHA_REGISTRO DATE,
    V_USUARIO NVARCHAR2,
    V_CD_DOCUMENTO_CLINICO NUMBER,
    V_MADRE NVARCHAR2,
    V_PADRE NVARCHAR2,
    V_OTROS_FAMILIARES NVARCHAR2,
    V_ANTECEDENTES_PRENATALES NVARCHAR2,
    V_HORAS_HIDRORREA NVARCHAR2,
    V_NUMERO_TACTOS NVARCHAR2,
    V_LABOR NVARCHAR2,
    V_CANTIDAD NVARCHAR2,
    V_OLOR NVARCHAR2,
    V_CARACTERISTICAS NVARCHAR2,
    V_SUFRIMIENTO NVARCHAR2,
    V_FECHA_NACIMIENTO NVARCHAR2,
    V_HORA_NACIMIENTO NVARCHAR2,
    V_FECHA_ULTIMA_MENSTRUACION NVARCHAR2,
    V_CAPURRO NVARCHAR2,
    V_ECO_EXTRAPOLADO NVARCHAR2,
    V_BALLARD NVARCHAR2
) IS
BEGIN
    /* Eliminar datos si existen, confirmar esto */
    DELETE FROM T_ANTECEDENTES_FAMILIARES
    WHERE CD_ATENDIMENTO = V_CD_ATENDIMIENTO;
    COMMIT;

    /* Insertar nuevos datos */
    INSERT INTO T_ANTECEDENTES_FAMILIARES (
        CD_FORMULARIO,
        CD_ATENDIMENTO,
        FECHA_REGISTRO,
        USUARIO,
        CD_DOCUMENTO_CLINICO,
        MADRE,
        PADRE,
        OTROS_FAMILIARES,
        ANTECEDENTES_PRENATALES,
        HORAS_HIDRORREA,
        NUMERO_TACTOS,
        LABOR,
        CANTIDAD,
        OLOR,
        CARACTERISTICAS,
        SUFRIMIENTO,
        FECHA_NACIMIENTO,
        HORA_NACIMIENTO,
        FECHA_ULTIMA_MENSTRUACION,
        CAPURRO,
        ECO_EXTRAPOLADO,
        BALLARD
    ) VALUES (
        V_CD_FORMULARIO,
        V_CD_ATENDIMIENTO,
        V_FECHA_REGISTRO,
        V_USUARIO,
        V_CD_DOCUMENTO_CLINICO,
        V_MADRE,
        V_PADRE,
        V_OTROS_FAMILIARES,
        V_ANTECEDENTES_PRENATALES,
        V_HORAS_HIDRORREA,
        V_NUMERO_TACTOS,
        V_LABOR,
        V_CANTIDAD,
        V_OLOR,
        V_CARACTERISTICAS,
        V_SUFRIMIENTO,
        V_FECHA_NACIMIENTO,
        V_HORA_NACIMIENTO,
        V_FECHA_ULTIMA_MENSTRUACION,
        V_CAPURRO,
        V_ECO_EXTRAPOLADO,
        V_BALLARD
    );

    /* Confirmar los cambios */
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        NULL; /* Manejar excepciones */
END PRC_INSERTA_T_ANT_FAMILIARES;
