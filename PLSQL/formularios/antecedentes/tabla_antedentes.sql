-- Eliminar todos los valores de la tabla t_tipos_antecedentes

delete from t_tipos_antecedentes;

-- Agregar nuevos valores a la tabla t_tipos_antecedentes
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('ALÉRGICOS', 'A', '1 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('CLÍNICOS', 'A', '2 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('GINECOLÓGICOS', 'F', '3 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('TRAUMATOLÓGICOS', 'A', '4 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('PEDIÁTRICOS', 'A', '5 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('QUIRÚRGICOS', 'A', '6 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('FARMACOLÓGICOS', 'A', '7 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('HÁBITOS', 'A', '8 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('FAMILIARES', 'A', '9 ');
INSERT INTO t_tipos_antecedentes (TIPO, SEXO, CODIGO ) VALUES ('OTROS', 'A', '10 ');


select * from t_tipos_antecedentes

SELECT * FROM T_ANTECEDENTE_PERS_FAM WHERE CD_ATENDIMENTO = 654
