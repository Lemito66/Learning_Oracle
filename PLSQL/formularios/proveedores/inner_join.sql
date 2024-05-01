select * from hm_itg_proveedores where id = 176

select contacto.* 
from hm_itg_proveedores proveedor 
inner join hm_itg_contactos_prov contacto 
on proveedor.id = contacto.id_proveedor
where proveedor.id = 176


select * 
from hm_itg_proveedores proveedor 
inner join hm_itg_contactos_prov contacto 
on proveedor.id = contacto.id_proveedor
where proveedor.id = 176


select * 
from hm_itg_proveedores proveedor 
inner join hm_itg_contactos_prov contacto 
on proveedor.id = contacto.id_proveedor
