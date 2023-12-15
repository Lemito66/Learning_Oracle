select * from editor.editor_camp


select * from editor.editor_versao_documento

update editor.editor_versao_documento
set tp_versao = 'TEST',
sn_publicado = 0
where cd_documento = 1938
and vl_versao = 19
AND sn_ativo = 1




update editor.editor_versao_documento
set tp_versao = 'PUBLISHED',
sn_publicado = 1
where cd_documento = 1938
and vl_versao = 19
AND sn_ativo = 1

commit;

DELETE FROM editor_custom.t_tmp_008 WHERE CAMPO5 = 98823

SELECT * FROM editor_custom.t_tmp_008 WHERE CAMPO5 = 98823



select * from  editor.editor_versao_documento where cd_documento = 1938
and cd_versao_documento = 19


select * from editor.editor_versao_documento where cd_documento = 1938

select * from editor.editor_documento where   cd_documento = 1938        