select
    cid.cd_cid,
    cid.cd_cid || ' - ' || cid.ds_cid,
    'N'
from
    cid
where
    cid.sn_ativo = 'S'