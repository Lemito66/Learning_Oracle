/*
3. Pr�ctica 3
� Usando la pr�ctica anterior, si en el texto aparece el car�cter "x" debe
salir del bucle. Es igual en may�sculas o min�sculas.
� Debemos usar la cl�usula EXIT. 
 */

DECLARE
    TEXTO VARCHAR2(100) := 'Lemitox66 es el m�s crack de todo el mundo';
    I     NUMBER := 1;
BEGIN
    LOOP
        IF (SUBSTR(TEXTO, I, 1) = 'x' OR SUBSTR(TEXTO, I, 1) = 'X') THEN
            dbms_output.put_line('Se ha encontrado la letra x');
            EXIT;
        END IF;
        --DBMS_OUTPUT.PUT_LINE(SUBSTR(TEXTO, I, 1));
        I := I + 1;
    END LOOP;
END;
