CREATE
OR REPLACE FUNCTION obtener_area_muestra (vAtendimento NUMBER, vPrescripcion number) RETURN CLOB IS
-- Declaración del cursor
CURSOR c_datos IS
select
    
    area.area_muestra,
    area.fecha_registro
from
    EDITOR_CUSTOM.t_area_muestra_infeccion area
where
    area.cd_atendimento = vAtendimento
    and area.cd_prescripcion = vPrescripcion;

-- Variable CLOB para almacenar los resultados
v_resultado CLOB;

-- Variables para almacenar temporalmente los valores
v_area_muestra EDITOR_CUSTOM.T_AREA_MUESTRA_INFECCION.AREA_MUESTRA % TYPE;

v_fecha_registro EDITOR_CUSTOM.T_AREA_MUESTRA_INFECCION.FECHA_REGISTRO % TYPE;

-- Variable para el contador
v_contador NUMBER := 1;

BEGIN
-- Inicializar resultado
v_resultado := '';

-- Abrir cursor
OPEN c_datos;

-- Recorrer cursor y construir el resultado
LOOP FETCH c_datos INTO v_area_muestra,
v_fecha_registro;

EXIT WHEN c_datos % NOTFOUND;

-- Construir el resultado concatenando los valores con el contador
v_resultado := v_resultado || v_contador || '. ' || 'Diágnostico: ' || v_diagnostico || ' - ' || 'Fecha de ingreso: ' || to_char(v_fecha_registro, 'dd/mm/yyyy hh24:mi') || CHR(10);

-- Incrementar el contador
v_contador := v_contador + 1;

END
LOOP;

-- Cerrar cursor
CLOSE c_datos;

-- Devolver el resultado
RETURN v_resultado;

END obtener_area_muestra;