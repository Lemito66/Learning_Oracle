select * from t_lineas_intravenosas where cd_atendimento = 333

-- Permisos
grant execute on PRC_INSERTA_T_LINEAS_INTRA to editor, dbamv, mv2000, dbaeditor;

GRANT execute ON PRC_ELIMINA_LINEA_INTRA TO editor, dbamv, mv2000, dbaeditor;

SELECT
    T_LINEAS_INTRAVENOSAS.CD_REGISTRO_SECUENCIAL AS "ID",
    T_LINEAS_INTRAVENOSAS.FECHA_INICIO           AS "Fecha Inicio",
    T_LINEAS_INTRAVENOSAS.TIPO                   AS "Tipo",
    T_LINEAS_INTRAVENOSAS.LOCALIZACION           AS "Localización",
    T_LINEAS_INTRAVENOSAS.CUIDADOS               AS "Cuidados",
    T_LINEAS_INTRAVENOSAS.FECHA_CURACION
FROM
    T_LINEAS_INTRAVENOSAS
WHERE T_LINEAS_INTRAVENOSAS.CD_ATENDIMENTO = 654
