CREATE SEQUENCE sec_cpt
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999


CREATE TABLE cpt (
  cpt_id NUMBER DEFAULT sec_cpt.nextval PRIMARY KEY,
  cpt VARCHAR2(15) ,
  description_cpt varchar2 (4000),
  short_name varchar2 (4000) 
);


select * from cpt

INSERT INTO cpt (cpt, description_cpt, short_name)
VALUES ('ValorCPT1', 'Descripci�n para ValorCPT1', 'Corto1');

INSERT INTO cpt (cpt, description_cpt, short_name)
VALUES ('ValorCPT2', 'Descripci�n para ValorCPT2', 'Corto2');

delete from cpt


-- Add/modify columns 
alter table CPT modify description_cpt varchar2(3500);
alter table CPT modify short_name varchar2(3500);

SELECT cpt_id, cpt, description_cpt, short_name
FROM cpt
WHERE 
   upper(cpt) LIKE upper('%cesarea%')
   OR upper(description_cpt) LIKE upper('%cesarea%')
   OR upper(short_name) LIKE upper('%cesarea%');
   

