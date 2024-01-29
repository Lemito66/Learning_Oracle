CREATE TABLE
    t_receta_farmacia (
        cd_atendimento number(10) NOT NULL PRIMARY KEY,
        fecha_registro date NOT NULL,
        observacion nvarchar2(150) NOT NULL,
        despacho nvarchar2(20) NOT NULL,
    );

-- dar permisos al usuario metroconsulta para que haga un crud

GRANT SELECT, INSERT, UPDATE, DELETE ON t_receta_farmacia TO metroconsulta;

-- Ahora crear un sinonimo para evitar problemas

CREATE PUBLIC SYNONYM t_receta_farmacia FOR editor_custom.t_receta_farmacia;