/* 2. Práctica 2-
• Crear una variable llamada TEXTO de tipo VARCHAR2(100).
• Poner alguna frase
• Mediante un bucle, escribir la frase al revés, Usamos el bucle WHILE */

DECLARE
    TEXTO VARCHAR2(100) := 'Lemito66 es el más crack de todo el mundo';
    I     NUMBER := 1;
    nuevo_texto VARCHAR2(100);
BEGIN
    DBMS_OUTPUT.PUT_LINE(SUBSTR(TEXTO, 1, 3));
    while i <= LENGTH(texto) LOOP
        nuevo_texto := SUBSTR(TEXTO, i, 1) || nuevo_texto;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(nuevo_texto);
END;
