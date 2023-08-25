SELECT
    *
FROM
    T_LINEAS_INTRAVENOSAS
WHERE
    CD_ATENDIMENTO = 333
 -- Permisos
    GRANT EXECUTE
    ON PRC_INSERTA_T_LINEAS_INTRA TO EDITOR, DBAMV, MV2000, DBAEDITOR;

GRANT EXECUTE ON PRC_ELIMINA_LINEA_INTRA TO EDITOR, DBAMV, MV2000, DBAEDITOR;

SELECT
    T_LINEAS_INTRAVENOSAS.CD_REGISTRO_SECUENCIAL AS "ID",
    T_LINEAS_INTRAVENOSAS.FECHA_INICIO AS "Fecha Inicio",
    T_LINEAS_INTRAVENOSAS.TIPO AS "Tipo",
    T_LINEAS_INTRAVENOSAS.LOCALIZACION AS "Localizaci�n",
    T_LINEAS_INTRAVENOSAS.CUIDADOS AS "Cuidados",
    T_LINEAS_INTRAVENOSAS.FECHA_CURACION AS "Fecha de Curación"
FROM
    T_LINEAS_INTRAVENOSAS
WHERE
    T_LINEAS_INTRAVENOSAS.CD_ATENDIMENTO = 654
SELECT
    T_LINEAS_INTRAVENOSAS.CD_REGISTRO_SECUENCIAL AS "ID",
    T_LINEAS_INTRAVENOSAS.FECHA_INICIO AS "Fecha Inicio",
    T_LINEAS_INTRAVENOSAS.TIPO AS "Tipo",
    T_LINEAS_INTRAVENOSAS.LOCALIZACION AS "Localización",
    T_LINEAS_INTRAVENOSAS.CUIDADOS AS "Cuidados",
    T_LINEAS_INTRAVENOSAS.FECHA_CURACION AS "Fecha de Curación"
FROM
    EDITOR_CUSTOM.T_LINEAS_INTRAVENOSAS
WHERE
    T_LINEAS_INTRAVENOSAS.CD_ATENDIMENTO = '&<PAR_CD_ATENDIMENTO>'