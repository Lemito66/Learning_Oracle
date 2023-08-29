-- coalesce devuelve el primer valor no nulo de una lista de valores

SELECT coalesce(null, 0, 1) FROM dual;