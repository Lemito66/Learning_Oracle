create or replace procedure PRC_INSERTA_DESTINO_008(vAtendimento NUMBER, vDestino1 CHAR, vDestino2 CHAR,
                                                    vDestino3 CHAR, vDestino4 CHAR, vDestino5 CHAR, vDestino6 CHAR, 
                                                    vDestino7 CHAR, vDestino8 CHAR, vDestino9 CHAR, vDestino10 CHAR) is
  nMaximo NUMBER;
  vDestino VARCHAR2(100);
begin
  -- ENCUENTRA EL ULTIMO REGISTRO
  begin
    select max(a.cd_ultimo_registro)
    into nMaximo
    from t_emergencia a
    where cd_atendimento=vAtendimento;
  exception when others then
    nMaximo:=null;
  end;
  
  -- ESCOGE EL DESTINO
  if trim(vDestino1)='true' then
    vDestino:='Domicilio';
  elsif trim(vDestino2)='true' then
    vDestino:='Consulta externa';
  elsif trim(vDestino3)='true' then
    vDestino:='Observación';
  elsif trim(vDestino4)='true' then
    vDestino:='Referencia';
  elsif trim(vDestino5)='true' then
    vDestino:='Abandono Voluntario';
  elsif trim(vDestino6)='true' then
    vDestino:='Abandono sin autorización';
  elsif trim(vDestino7)='true' then
    vDestino:='Morgue';
  elsif trim(vDestino8)='true' then
    vDestino:='Funeraria';
  elsif trim(vDestino9)='true' then
    vDestino:='Medicina Legal';
  elsif trim(vDestino10)='true' then
    vDestino:='Internación';
  end if;
  
  -- GRABA EL DESTINO EN EL ULTIMO REGISTRO
  begin
    update t_emergencia
    set destino=vDestino
    where cd_ultimo_registro=nMaximo and
          cd_atendimento=vAtendimento;
  exception when others then
    null;
  end;
  
  commit;
end PRC_INSERTA_DESTINO_008;
