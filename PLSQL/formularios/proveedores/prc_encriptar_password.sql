CREATE OR REPLACE PROCEDURE EncriptarContrasenaProveedor AS
BEGIN
    -- Actualizar la contraseña en la tabla de proveedores
    FOR r IN (SELECT proveedor_id, password FROM proveedorEmill) LOOP
        DECLARE
            v_hash RAW(64);
        BEGIN
            v_hash := DBMS_CRYPTO.HASH(
                            UTL_RAW.CAST_TO_RAW(r.password), 
                            DBMS_CRYPTO.HASH_SH256);
            UPDATE proveedorEmill
            SET password = LOWER(RAWTOHEX(v_hash))
            WHERE proveedor_id = r.proveedor_id;
        END;
    END LOOP;
    COMMIT;
END;
