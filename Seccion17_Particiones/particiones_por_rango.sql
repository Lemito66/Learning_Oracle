-- Sintaxis del particionamiento 


/* partition by range (columna, columna1)
(
    partition p1 values less than (valor1),
    partition p2 values less than (valor2),
    partition p3 values less than (valor3),
    partition p4 values less than (maxvalue),
) */


CREATE TABLE rango (
    codigo NUMBER(3) NOT NULL,
    datos VARCHAR2(100) NOT NULL
)
PARTITION BY RANGE (codigo) (
    PARTITION p1 VALUES LESS THAN (10),
    PARTITION p2 VALUES LESS THAN (20),
    PARTITION p3 VALUES LESS THAN (30),
    PARTITION p4 VALUES LESS THAN (40)
    --PARTITION p5 VALUES LESS THAN (MAXVALUE)
);
