select * from hm_itg_contactos_prov

select * from hm_itg_proveedores where id = 176, --2014, --2442

select * from hm_itg_proveedores proveedor where proveedor.password is not null 

-- Proveedores con ruc vacio
select * from hm_itg_proveedores proveedor where proveedor.ruc is  null 

-- Proveedores con cedula vacia
select * from hm_itg_proveedores proveedor where proveedor.cedula is null

-- Proveedores con cedula y sin ruc
select * from hm_itg_proveedores proveedor where proveedor.ruc is null and proveedor.cedula is not null

select * from pais

select * from uf

select nm_uf, nm_pais, uf.cd_uf  from uf inner join pais on uf.cd_pais = uf.cd_pais where pais.cd_pais = 1