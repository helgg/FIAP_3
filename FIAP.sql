@C:\Users\helde\OneDrive\FIAP\REPO\FIAP_F3\cria.sql;
@C:\Users\helde\OneDrive\FIAP\REPO\FIAP_F3\apaga.sql;

SELECT table_name, num_rows, sample_size FROM user_tables;

SELECT table_name, column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE 1=1
AND table_name LIKE '%VISUALIZACAO%'
ORDER BY column_id;

SET SERVEROUTPUT ON
BEGIN
    FOR t IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE "' || t.table_name || '" CASCADE CONSTRAINTS PURGE';
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao dropar a base: ' || SQLERRM);
END;
/

SELECT * FROM MC_SGV_OCORRENCIA_SAC;