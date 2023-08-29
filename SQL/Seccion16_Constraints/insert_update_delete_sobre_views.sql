create view regions_v as select * from regions

select * from regions_v;

insert into regions_v values(5, 'Latinoam�rica')

-- Si realizas una vista de tipo join no vas a poder insertar, actualizar ni eliminar
