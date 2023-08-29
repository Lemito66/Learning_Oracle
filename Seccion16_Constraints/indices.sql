-- indices

-- Los indices son una herramienta para mejorar el rendimiento de las consultas por medio de la creacion de estructuras de datos que permiten acceder a los datos de una tabla de manera mas eficiente.

create index index_last_name on employees (last_name)

select * from employees where last_name like 'S%'

create index index_last_name_first_name on employees (last_name, first_name)

drop index index_last_name_first_name
