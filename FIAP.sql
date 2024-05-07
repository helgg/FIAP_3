@C:\Users\helde\OneDrive\FIAP\REPO\FIAP_F3\cria.sql;
@C:\Users\helde\OneDrive\FIAP\REPO\FIAP_F3\apaga.sql;

SELECT table_name, num_rows, sample_size FROM user_tables;

SELECT table_name, column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE 1=1
AND table_name LIKE '%MC_SGV_OCORRENCIA_SAC%'
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


LOCK TABLE MC_SGV_SAC IN EXCLUSIVE MODE;
DROP TABLE MC_SGV_SAC CASCADE CONSTRAINTS PURGE;



SELECT s.sid, s.serial#, s.username, s.program
FROM v$locked_object l, dba_objects o, v$session s
WHERE l.object_id = o.object_id
  AND o.object_name = 'MC_SGV_SAC'
  AND l.session_id = s.sid;
  
  
ALTER SYSTEM KILL SESSION '2554,35788' IMMEDIATE;
