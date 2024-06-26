-------------------------------------------------------------------------------------
-- DML UPDATE PARA CORRE��O DE ERRO NO SCRIPT DDL PARA CRIA��O DA TABELA MC_ESTADO --
-------------------------------------------------------------------------------------

UPDATE MC_ESTADO
SET NM_ESTADO = 'SANTA CATARINA' WHERE NM_ESTADO = 'SANTA CATARIA';

UPDATE MC_ESTADO
SET NM_ESTADO = 'RONDONIA' WHERE NM_ESTADO = 'ROND�NIA';

UPDATE MC_ESTADO
SET NM_ESTADO = UPPER(NM_ESTADO);

--------------------
-- SELECT TESTES  --
--------------------

SELECT table_name, num_rows, sample_size FROM user_tables;

SELECT * FROM mc_cliente;
SELECT * FROM mc_produto;
SELECT * FROM MC_SGV_SAC;
SELECT * FROM MC_ESTADO;
SELECT * FROM MC_SGV_OCORRENCIA_SAC;

SELECT PF0110.FUN_MC_GERA_ALIQUOTA_MEDIA_ICMS_ESTADO ('SP') ALIQUOTA_ICMS_ESTADO FROM DUAL;
/

SELECT OWNER, OBJECT_NAME, LAST_DDL_TIME, STATUS
FROM ALL_OBJECTS
WHERE 1=1
  AND OBJECT_NAME = 'FUN_MC_GERA_ALIQUOTA_MEDIA_ICMS_ESTADO'
  AND OBJECT_TYPE = 'FUNCTION'
--  AND OWNER = 'TSCO'
  AND OWNER NOT LIKE '%RM%'
;



-----------------------------------
-- DML PARA INSERT EM MC_SGV_SAC --
-----------------------------------
BEGIN
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (3, 1, 3, 3, 'Problema com a entrega', TO_DATE('2024-05-02', 'YYYY-MM-DD'), 10, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 11, 1, 'Entrega remarcada para amanh�', 'S', 'P', 80);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (4, 3, 1, 2, 'D�vida sobre o funcionamento', TO_DATE('2024-05-03', 'YYYY-MM-DD'), 9, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 10, 1, 'Cliente satisfeito com a explica��o', 'D', 'E', 90);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (5, 2, 2, 3, 'Elogio sobre o atendimento', TO_DATE('2024-05-04', 'YYYY-MM-DD'), 11, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 12, 1, 'Cliente elogiou a presteza da equipe', 'E', 'E', 95);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (6, 4, 2, 1, 'Produto danificado', TO_DATE('2024-05-05', 'YYYY-MM-DD'), 8, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 9, 1, 'Produto substitu�do, cliente satisfeito', 'D', 'F', 75);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (7, 1, 1, 3, 'Troca de produto', TO_DATE('2024-05-06', 'YYYY-MM-DD'), 12, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 14, 2, 'Produto trocado, cliente satisfeito', 'S', 'E', 85);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (8, 3, 3, 2, 'Problema na fatura', TO_DATE('2024-05-07', 'YYYY-MM-DD'), 10, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 11, 1, 'Fatura corrigida, cliente satisfeito', 'D', 'E', 90);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (9, 2, 2, 1, 'Demora na entrega', TO_DATE('2024-05-08', 'YYYY-MM-DD'), 11, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 13, 2, 'Entrega agendada para hoje � tarde', 'D', 'P', 80);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (10, 4, 1, 3, 'Produto com defeito', TO_DATE('2024-05-09', 'YYYY-MM-DD'), 9, TO_DATE('2024-05-09', 'YYYY-MM-DD'), 10, 1, 'Produto substitu�do, cliente satisfeito', 'D', 'E', 95);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (11, 2, 3, 2, 'Informa��es sobre o pedido', TO_DATE('2024-05-10', 'YYYY-MM-DD'), 14, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 15, 1, 'Cliente satisfeito com as informa��es', 'S', 'E', 90); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (12, 3, 2, 1, 'Problema na entrega', TO_DATE('2024-05-11', 'YYYY-MM-DD'), 8, TO_DATE('2024-05-11', 'YYYY-MM-DD'), 9, 2, 'Entrega remarcada para amanh�', 'D', 'P', 70); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (13, 1, 3, 2, 'D�vida sobre o uso do produto', TO_DATE('2024-05-12', 'YYYY-MM-DD'), 10, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 11, 1, 'Cliente satisfeito com a explica��o', 'D', 'E', 85); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (14, 2, 1, 3, 'Elogio sobre o atendimento', TO_DATE('2024-05-13', 'YYYY-MM-DD'), 11, TO_DATE('2024-05-13', 'YYYY-MM-DD'), 12, 1, 'Cliente elogiou a presteza da equipe', 'E', 'E', 95); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (15, 4, 3, 1, 'Produto com defeito', TO_DATE('2024-05-14', 'YYYY-MM-DD'), 9, TO_DATE('2024-05-14', 'YYYY-MM-DD'), 10, 2, 'Produto substitu�do, cliente satisfeito', 'D', 'E', 95); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (16, 3, 2, 2, 'Problema na fatura', TO_DATE('2024-05-15', 'YYYY-MM-DD'), 10, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 11, 1, 'Fatura corrigida, cliente satisfeito', 'D', 'E', 90); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (17, 2, 1, 3, 'Demora na entrega', TO_DATE('2024-05-16', 'YYYY-MM-DD'), 11, TO_DATE('2024-05-16', 'YYYY-MM-DD'), 13, 2, 'Entrega agendada para hoje � tarde', 'D', 'P', 80);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (18, 2, 3, 1, 'Informa��es sobre o pedido', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 14, TO_DATE('2024-05-17', 'YYYY-MM-DD'), 15, 1, 'Cliente satisfeito com as informa��es', 'S', 'E', 90);
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (19, 3, 1, 2, 'Problema na entrega', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 8, TO_DATE('2024-05-18', 'YYYY-MM-DD'), 9, 2, 'Entrega remarcada para amanh�', 'D', 'P', 70); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (20, 1, 3, 2, 'D�vida sobre o uso do produto', TO_DATE('2024-05-19', 'YYYY-MM-DD'), 10, TO_DATE('2024-05-19', 'YYYY-MM-DD'), 11, 1, 'Cliente satisfeito com a explica��o', 'D', 'E', 85); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (21, 2, 1, 3, 'Elogio sobre o atendimento', TO_DATE('2024-05-20', 'YYYY-MM-DD'), 11, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 12, 1, 'Cliente elogiou a presteza da equipe', 'E', 'E', 95); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (22, 4, 3, 1, 'Produto com defeito', TO_DATE('2024-05-21', 'YYYY-MM-DD'), 9, TO_DATE('2024-05-21', 'YYYY-MM-DD'), 10, 2, 'Produto substitu�do, cliente satisfeito', 'D', 'E', 95); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (23, 3, 2, 2, 'Problema na fatura', TO_DATE('2024-05-22', 'YYYY-MM-DD'), 10, TO_DATE('2024-05-22', 'YYYY-MM-DD'), 11, 1, 'Fatura corrigida, cliente satisfeito', 'D', 'E', 90); 
INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (24, 2, 1, 3, 'Demora na entrega', TO_DATE('2024-05-23', 'YYYY-MM-DD'), 11, TO_DATE('2024-05-23', 'YYYY-MM-DD'), 13, 2, 'Entrega agendada para hoje � tarde', 'D', 'P', 80);
END;


-------------------
-- SCRIPT PL/SQL --
-------------------

SET SERVEROUTPUT ON
DECLARE

    v_sg_estado CHAR(2);
    v_nm_estado VARCHAR2(50);
    v_vl_unitario_lucro_produto DECIMAL(5,2);
    v_ds_tipo_classificacao_sac VARCHAR2(50);
    v_vl_icms_estado NUMBER;
    v_vl_icms_produto NUMBER;

    CURSOR cursor_sac IS 
        SELECT 
            sac.NR_SAC AS NR_OCOR_SAC,
            sac.DT_ABERTURA_SAC AS DT_ABERTURA,
            sac.HR_ABERTURA_SAC AS HR_ABERTURA,
            sac.TP_SAC AS TIPO_SAC,
            pd.CD_PRODUTO AS COD_PROD,
            pd.DS_PRODUTO AS DESC_PROD,
            pd.VL_UNITARIO AS VALOR_UN,
            pd.VL_PERC_LUCRO AS PERC_LUCRO,
            cli.NR_CLIENTE,
            cli.NM_CLIENTE AS NOME_CLIENTE
        FROM MC_SGV_SAC sac
        INNER JOIN mc_produto pd ON sac.CD_PRODUTO = pd.CD_PRODUTO
        INNER JOIN mc_cliente cli ON sac.NR_CLIENTE = cli.nr_cliente;

BEGIN

    FOR x IN cursor_sac LOOP

        IF x.TIPO_SAC = 'S' THEN v_ds_tipo_classificacao_sac := 'SUGEST�O'; 
        ELSIF x.TIPO_SAC = 'D' THEN  v_ds_tipo_classificacao_sac := 'D�VIDA';
        ELSIF x.TIPO_SAC = 'E' THEN  v_ds_tipo_classificacao_sac := 'ELOGIO';
        ELSE  v_ds_tipo_classificacao_sac := 'CLASSIFICA��O INV�LIDA';
        END IF;               

        SELECT uf.SG_ESTADO, uf.NM_ESTADO INTO v_sg_estado, v_nm_estado
        FROM mc_cliente cli
        LEFT JOIN mc_end_cli ecli ON cli.NR_CLIENTE = ecli.NR_CLIENTE
        LEFT JOIN mc_Logradouro log ON ecli.CD_LOGRADOURO_CLI = log.CD_LOGRADOURO
        LEFT JOIN mc_bairro bai ON log.CD_BAIRRO = bai.CD_BAIRRO
        LEFT JOIN mc_cidade cid ON bai.CD_CIDADE = cid.CD_CIDADE
        LEFT JOIN mc_estado uf ON cid.SG_ESTADO = uf.SG_ESTADO
        WHERE log.CD_LOGRADOURO = (SELECT CD_LOGRADOURO_CLI FROM mc_end_cli WHERE NR_CLIENTE = x.NR_CLIENTE) 
        FETCH FIRST 1 ROWS ONLY;        

        v_vl_unitario_lucro_produto := (x.PERC_LUCRO / 100) * x.VALOR_UN;

        select PF0110.fun_mc_gera_aliquota_media_icms_estado(v_sg_estado) INTO v_vl_icms_estado from dual;

        v_vl_icms_produto := (v_vl_icms_estado / 100) * x.VALOR_UN;        

        DBMS_OUTPUT.PUT_LINE('N�mero ocorr�ncia SAC: ' || x.NR_OCOR_SAC);
        DBMS_OUTPUT.PUT_LINE('Data de abertura do SAC: ' || x.DT_ABERTURA);
        DBMS_OUTPUT.PUT_LINE('Hora de abertura do SAC: ' || x.HR_ABERTURA);
        DBMS_OUTPUT.PUT_LINE('Tipo do SAC: ' || x.TIPO_SAC);
        DBMS_OUTPUT.PUT_LINE('C�digo do produto: ' || x.COD_PROD);
        DBMS_OUTPUT.PUT_LINE('Nome do produto: ' || x.DESC_PROD);
        DBMS_OUTPUT.PUT_LINE('Valor unit�rio: R$ ' || x.VALOR_UN);
        DBMS_OUTPUT.PUT_LINE('Percentual de lucro: ' || x.PERC_LUCRO || '%');
        DBMS_OUTPUT.PUT_LINE('Valor lucro unit�rio: ' || v_ds_tipo_classificacao_sac);
        DBMS_OUTPUT.PUT_LINE('N�mero do cliente: ' || x.NR_CLIENTE);
        DBMS_OUTPUT.PUT_LINE('Nome do cliente: ' || x.NOME_CLIENTE);
        DBMS_OUTPUT.PUT_LINE('-----');


        INSERT INTO MC_SGV_OCORRENCIA_SAC (NR_OCORRENCIA_SAC,DT_ABERTURA_SAC,HR_ABERTURA_SAC,DS_TIPO_CLASSIFICACAO_SAC,CD_PRODUTO,DS_PRODUTO,VL_UNITARIO_PRODUTO,VL_PERC_LUCRO,VL_UNITARIO_LUCRO_PRODUTO,SG_ESTADO,NM_ESTADO,NR_CLIENTE,NM_CLIENTE,VL_ICMS_PRODUTO)
        VALUES (
            x.NR_OCOR_SAC,
            x.DT_ABERTURA,
            x.HR_ABERTURA,
            v_ds_tipo_classificacao_sac,
            x.COD_PROD,
            x.DESC_PROD,
            x.VALOR_UN,
            x.PERC_LUCRO,
            v_vl_unitario_lucro_produto,
            v_sg_estado,
            v_nm_estado,
            x.NR_CLIENTE,
            x.NOME_CLIENTE,
            v_vl_icms_produto
        );

    END LOOP;
COMMIT;
END;
/