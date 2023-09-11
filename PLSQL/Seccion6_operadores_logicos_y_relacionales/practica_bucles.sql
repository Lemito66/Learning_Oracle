﻿/* 
1. Pr�ctica 1
� Vamos a crear la tabla de multiplicar del 1 al 10, con los tres tipos de
bucles: LOOP, WHILE y FOR

 */
-- For
BEGIN FOR I IN 1..10 LOOP
  FOR Y IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(I)
                         || ' * '
                         || TO_CHAR(Y)
                         || ' = '
                         || I*Y);
  END LOOP;
END LOOP;
END;
 --loop
DECLARE
  X NUMBER:=1;
  Y NUMBER:=1;
BEGIN
  <<FIRST>>
  LOOP
    <<SECOND>>
    LOOP
      DBMS_OUTPUT.PUT_LINE(TO_CHAR(X)
                           || ' * '
                           || TO_CHAR(Y)
                           || ' = '
                           || X*Y);
      Y:=Y+1;
      EXIT WHEN Y=11;
    END LOOP SECOND;
    X:=X+1;
    EXIT WHEN X=11;
  END LOOP FIRST;
END;
 -- While
DECLARE
  X NUMBER := 1;
  Y NUMBER := 1;
BEGIN
  WHILE X <=10 LOOP
    WHILE Y <= 10 LOOP
      DBMS_OUTPUT.PUT_LINE(TO_CHAR(X)
                           || ' * '
                           || TO_CHAR(Y)
                           || ' = '
                           || X*Y);
      Y := Y + 1;
    END LOOP;
    Y := 1;
    X := X + 1;
  END LOOP;
END;