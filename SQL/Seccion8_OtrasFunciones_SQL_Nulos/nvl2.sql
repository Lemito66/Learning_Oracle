-- nvl2 es una funcion que permite sustituir un valor. El primero si no es nulo, devuelve el segundo valor, si es nulo devuelve el tercero

SELECT nvl2(null, 0, 1) FROM dual;
