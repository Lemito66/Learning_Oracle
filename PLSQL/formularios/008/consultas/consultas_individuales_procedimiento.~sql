select cd_multi_empresa, '68964' Unicodigo from multi_empresas

-- Empresa
select ds_multi_empresa from multi_empresas

-- Cedula
select paciente.cd_identificador_pessoa, paciente.nr_documento_estrangeiro from paciente

-- número de archivo o codigo de atendimiento

select cd_atendimento from atendime

-- fecha de admisión 

select atendime.hr_atendimento from atendime

select paciente.ds_primeiro_nome, 
paciente.ds_segundo_nome, 
paciente.ds_primeiro_sobrenome,
 paciente.ds_segundo_sobrenome from paciente

select * from paciente


SELECT
       CD_IDENTIFICADOR_PESSOA,
       NR_DOCUMENTO_ESTRANGEIRO,
    CASE
        WHEN CD_IDENTIFICADOR_PESSOA IS NOT NULL THEN 'Cédula'
        WHEN NR_DOCUMENTO_ESTRANGEIRO IS NOT NULL THEN 'Pasaporte'
        ELSE NULL -- Otra opción si ninguno de los campos tiene valor
    END AS CEDULA_CIUDADANIA_PACIENTE
FROM paciente
where NR_DOCUMENTO_ESTRANGEIRO is null and CD_IDENTIFICADOR_PESSOA is null
group by 


-- Saber si estan campos vacios en la cedula y pasaporte
SELECT COUNT(*) AS TotalRegistrosVacios
FROM (
    SELECT
        CD_IDENTIFICADOR_PESSOA,
        NR_DOCUMENTO_ESTRANGEIRO,
        CASE
            WHEN CD_IDENTIFICADOR_PESSOA IS NOT NULL THEN 'Cédula'
            WHEN NR_DOCUMENTO_ESTRANGEIRO IS NOT NULL THEN 'Pasaporte'
            ELSE NULL
        END AS CEDULA_CIUDADANIA_PACIENTE
    FROM paciente
    WHERE NR_DOCUMENTO_ESTRANGEIRO IS NULL AND CD_IDENTIFICADOR_PESSOA IS NULL
)
