-- nombres cortos y claro
-- acceder a objetos de otros esquemas 

create synonym departamentos for departaments

select * from departamentos

-- Dar permisos a un usuario

grant select on departaments to usuario1