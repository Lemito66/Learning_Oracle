-- Eliminar todos los valores de la tabla t_tipos_antecedentes

delete from t_tipos_antecedentes;

-- Agregar nuevos valores a la tabla t_tipos_antecedentes
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('AL�RGICOS', 'A', '1 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('CL�NICOS', 'A', '2 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('GINECOL�GICOS', 'F', '3 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('TRAUMATOL�GICOS', 'A', '4 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('PEDI�TRICOS', 'A', '5 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('QUIR�RGICOS', 'A', '6 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('FARMACOL�GICOS', 'A', '7 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('H�BITOS', 'A', '8 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('FAMILIARES', 'A', '9 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('OTROS', 'A', '10 ');


select * from t_tipos_antecedentes

SELECT * FROM T_ANTECEDENTE_PERS_FAM WHERE CD_ATENDIMENTO = 654
