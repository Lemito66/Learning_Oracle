create
or replace function FUN_VALIDA_ALTA_008 (
    vDomicilio char,
    vConsultaExterna char,
    vObservacion char,
    vReferencia char,
    vVoluntario char,
    vSinAutorizacion char,
    vMorgue char,
    vFuneraria char,
    vMedicinaLegal char,
    vInternacion char,
    vEstable char,
    vInestable char,
    vVivo char,
    vMuerte char
) return varchar2 is vResultado varchar2(50);

vTotal number := 0;

vTotalEstable number := 0;

vTotalVivo number := 0;

begin
-- SI FALLECE
if --vMorgue='true' or 
vMuerte = 'true' then vTotalVivo := vTotalVivo + 1;

vTotal := vTotal + 1;

vTotalEstable := vTotalEstable + 1;

else
-- DOMICILIO
if vDomicilio = 'true' then vTotal := vTotal + 1;

end if;

-- CONSULTA EXTERNA
if vConsultaExterna = 'true' then vTotal := vTotal + 1;

end if;

-- OBSERVACION
if vObservacion = 'true' then vTotal := vTotal + 1;

end if;

-- REFERENCIA
if vReferencia = 'true' then vTotal := vTotal + 1;

end if;

-- VOLUNTARIO
if vVoluntario = 'true' then vTotal := vTotal + 1;

end if;

-- SIN AUTORIZACION
if vSinAutorizacion = 'true' then vTotal := vTotal + 1;

end if;

-- MORGUE
if vMorgue = 'true' then vTotal := vTotal + 1;

end if;

-- FUNERARIA
if vFuneraria = 'true' then vTotal := vTotal + 1;

end if;

-- MEDICINA LEGAL
if vMedicinaLegal = 'true' then vTotal := vTotal + 1;

end if;

-- INTERNACION
if vInternacion = 'true' then vTotal := vTotal + 1;

end if;

-- ESTABLE
if vEstable = 'true' then vTotalEstable := vTotalEstable + 1;

end if;

-- INESTABLE
if vInestable = 'true' then vTotalEstable := vTotalEstable + 1;

end if;

-- VIVO
if vVivo = 'true' then vTotalVivo := vTotalVivo + 1;

end if;

-- MUERTO
if vMuerte = 'true' then vTotalVivo := vTotalVivo + 1;

end if;

end if;

-- VERIFICA SI SE MARCO ALGO
if nvl(vTotal, 0) <> 0
and nvl(vTotalEstable, 0) <> 0
and nvl(vTotalVivo, 0) <> 0 then vResultado := 'VALIDO';

end if;

return (vResultado);

end FUN_VALIDA_ALTA_008;