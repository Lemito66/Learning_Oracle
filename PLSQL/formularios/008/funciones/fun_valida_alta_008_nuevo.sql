create
or replace function FUN_VALIDA_ALTA_008_NUEVO (

    vPacienteVivo char,
    vPacienteFallecido char,
    vEstable char,
    vInestable char,
    vAltaDefinitiva char,
    vConsultaExterna char,
    vHospitalizacion char,
    vReferencia char,
    vReferenciaInversa char,
    vDerivacion char,
    vAltaVoluntarea char,
    vRetiroSinAutorizacion char
    /* vVivo char,
    vMuerte char */
) return varchar2 is vResultado varchar2(50);

vVivo number := 0;

vTotalEstableOInestable number := 0;

vChecks number := 0;

vFallecido number := 0;

begin
-- SI FALLECE
if --vMorgue='true' or 
vPacienteFallecido = 'true' then vChecks := vChecks + 1;

vVivo := vVivo + 1;

vTotalEstableOInestable := vTotalEstableOInestable + 1;

vFallecido := vFallecido + 1;



else
-- VIVO
if vPacienteVivo = 'true' then vVivo := vVivo + 1;

end if;

-- ESTABLE
if vEstable = 'true' then vTotalEstableOInestable := vTotalEstableOInestable + 1;

end if;

-- INESTABLE
if vInestable = 'true' then vTotalEstableOInestable := vTotalEstableOInestable + 1;

end if;

-- ALTA DEFINITIVA
if vAltaDefinitiva = 'true' then vChecks := vChecks + 1;

end if;

-- CONSULTA EXTERNA
if vConsultaExterna = 'true' then vChecks := vChecks + 1;

end if;

-- HOSPITALIZACION
if vHospitalizacion = 'true' then vChecks := vChecks + 1;

end if;

-- REFERENCIA
if vReferencia = 'true' then vChecks := vChecks + 1;

end if;

-- REFERENCIA INVERSA
if vReferenciaInversa = 'true' then vChecks := vChecks + 1;

end if;

-- DERIVACION
if vDerivacion = 'true' then vChecks := vChecks + 1;

end if;

-- ALTA VOLUNTAREA
if vAltaVoluntarea = 'true' then vChecks := vChecks + 1;

end if;

-- RETIRO SIN AUTORIZACION
if vRetiroSinAutorizacion = 'true' then vChecks := vChecks + 1;

end if;

end if;

-- VERIFICA SI SE MARCO ALGO
if nvl(vVivo, 0) <> 0
and nvl(vTotalEstableOInestable, 0) <> 0
and nvl(vChecks, 0) <> 0
and nvl(vFallecido, 0) <> 0 then vResultado := 'VALIDO';

end if;

return (vResultado);

end FUN_VALIDA_ALTA_008_NUEVO;