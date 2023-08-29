-- Crear secuencia

CREATE SEQUENCE seq_id increment by 1 start with 1 minvalue 1;

select seq_id.nextval from dual;
select seq_id.currval from dual;

insert into regions values (seq_id.nextval, 'Antartida');

drop sequence seq_id;
