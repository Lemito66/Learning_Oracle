CREATE SEQUENCE SEC_GAC
START WITH 1
INCREMENT BY 1;

CREATE TABLE GAC (
    GAC_ID NUMBER DEFAULT SEC_GAC.NEXTVAL PRIMARY KEY,
    cantidad NUMBER,
    descripcion VARCHAR2(100),
    fecha DATE DEFAULT TRUNC(SYSDATE), -- Esto establece la hora en 00:00:00
    hora DATE DEFAULT SYSDATE -- Esto establece la fecha y hora actual y luego extraemos solo la hora
);

-- Insertar Datos

INSERT INTO GAC (
    cantidad,
    descripcion
) VALUES (
    1,
    'GAC 1'
);

select * from gac

-- eliminar la tabla DELETE

-- DROP TABLE GAC;
