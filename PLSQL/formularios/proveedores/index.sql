select * from hm_itg_contactos_prov

select * from hm_itg_proveedores where id = 176

select * from pais

select * from uf

select nm_uf, nm_pais, uf.cd_uf  from uf inner join pais on uf.cd_pais = uf.cd_pais where pais.cd_pais = 1