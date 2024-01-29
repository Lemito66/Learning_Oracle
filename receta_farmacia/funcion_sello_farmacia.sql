CREATE OR REPLACE FUNCTION fun_sello_farmacia (v_Atendimento NUMBER) RETURN NVARCHAR2 IS 
    v_Resultado NVARCHAR2(4000); -- Ajusta la longitud según tus necesidades
    v_LineFeed CHAR(1) := CHR(10);
    v_MaxLineLength NUMBER := 32; -- Ajusta según la longitud máxima de la línea

BEGIN
    BEGIN
        SELECT
            CASE
                WHEN t.despacho = 'parcial' THEN 
                    '|' || RPAD('-', v_MaxLineLength - 2, '-') || '|' || v_LineFeed || 
                    '|' || RPAD('         FARMACIA', v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD(' HOSPITAL-METROPOLITANO S.A.S. ', v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD(' QUITO ' || TO_CHAR(sysdate, 'DD-MON-YYYY HH24:MI:SS'), v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD(' DISPENSADO PARCIALMENTE ', v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD('-', v_MaxLineLength - 2, '-') || '|'
                WHEN t.despacho = 'total' THEN 
                    '|' || RPAD('-', v_MaxLineLength - 2, '-') || '|' || v_LineFeed || 
                    '|' || RPAD('         FARMACIA', v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD(' HOSPITAL-METROPOLITANO S.A.S. ', v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD(' QUITO ' || TO_CHAR(sysdate, 'DD-MON-YYYY HH24:MI:SS'), v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD(' DISPENSADO COMPLETAMENTE ', v_MaxLineLength - 2, ' ') || '|' || v_LineFeed || 
                    '|' || RPAD('-', v_MaxLineLength - 2, '-') || '|'
                ELSE ''
            END INTO v_Resultado
        FROM
            t_receta_farmacia t
        WHERE
            t.cd_atendimento = v_Atendimento;

    EXCEPTION WHEN OTHERS THEN 
        v_Resultado := '';

    END;

    RETURN v_Resultado;

END fun_sello_farmacia;
