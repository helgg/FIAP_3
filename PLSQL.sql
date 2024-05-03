
--ITEM A
--Nümero da ocorréncia do SAC (coluna nr_sac na tabela mc_sgv_sac)
--Data de abertura do SAC (coluna dt_abertura_sac na tabela mc_sgv_sac)
--Hora de abertura do SAC (coluna hr_abertura_sac na tabela mc_sgv_sac)
--Tipo do SAC (esse conteüdo irä ser transformado posteriormente. Coluna tp_sac na tabela
--mc_sgv_sac)
--Cödigo do produto (coluna cd_produto na tabela mc_produto)
--Nome do produto (coluna ds_produto na tabela mc_produto)
--Valor unitårio do produto (coluna vl_unitario na tabela mc_produto)
--Percentual do lucro unitärio do produto (coluna vl_perc_lucro na tabela mc_produto)
--Nümero do Cliente (coluna nr_cliente na tabela mc_cliente)
--Nome do Cliente (coluna nm_cliente na tabela mc_cliente)

SELECT * FROM mc_cliente;
SELECT * FROM mc_produto;
SELECT * FROM MC_SGV_SAC

SELECT 
 sac.NR_SAC                 AS NR_OCOR_SAC
,sac.DT_ABERTURA_SAC AS DT_ABERTURA
,sac.HR_ABERTURA_SAC AS HR_ABERTURA
,sac.TP_SAC AS TIPO_SAC
,pd.CD_PRODUTO AS COD_PROD
,pd.DS_PRODUTO AS DESC_PROD
,pd.VL_UNITARIO AS VALOR_UN
,pd.VL_PERC_LUCRO AS PERC_LUCRO
,cli.NR_CLIENTE
,cli.NM_CLIENTE AS NOME_CLIENTE
FROM MC_SGV_SAC sac
INNER JOIN mc_produto pd
ON sac.CD_PRODUTO = pd.CD_PRODUTO
INNER JOIN mc_cliente cli
on sac.NR_CLIENTE = cli.nr_cliente
;


INSERT INTO MC_SGV_SAC (NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, DT_ATENDIMENTO, HR_ATENDIMENTO_SAC, NR_TEMPO_TOTAL_SAC, DS_DETALHADA_RETORNO_SAC, TP_SAC, ST_SAC, NR_INDICE_SATISFACAO) 
VALUES (

    2,
    2,
    2,
    2,
    'fudeu',
    TO_DATE('2024-05-01', 'YYYY-MM-DD'),
    14,
    TO_DATE('2024-05-01', 'YYYY-MM-DD'),
    15,
    NULL,
    'cliente disse que fudeu',
    'D',
    'E',
    NULL
);

   
   
   
-- 
-- PL SQL
--    
SET SERVEROUTPUT ON
DECLARE

    CURSOR cursor_sac IS 

        SELECT 
             sac.NR_SAC AS NR_OCOR_SAC
            ,sac.DT_ABERTURA_SAC AS DT_ABERTURA
            ,sac.HR_ABERTURA_SAC AS HR_ABERTURA
            ,sac.TP_SAC AS TIPO_SAC
            ,pd.CD_PRODUTO AS COD_PROD
            ,pd.DS_PRODUTO AS DESC_PROD
            ,pd.VL_UNITARIO AS VALOR_UN
            ,pd.VL_PERC_LUCRO AS PERC_LUCRO
            ,cli.NR_CLIENTE
            ,cli.NM_CLIENTE AS NOME_CLIENTE
            FROM MC_SGV_SAC sac
            INNER JOIN mc_produto pd
            ON sac.CD_PRODUTO = pd.CD_PRODUTO
            INNER JOIN mc_cliente cli
            on sac.NR_CLIENTE = cli.nr_cliente;

BEGIN

    FOR x IN cursor_sac LOOP
        DBMS_OUTPUT.PUT_LINE('Número ocorrência SAC: '||x.NR_OCOR_SAC);
        DBMS_OUTPUT.PUT_LINE('Data de abertura do SAC: '||x.DT_ABERTURA);
        DBMS_OUTPUT.PUT_LINE('Hora de abertura do SAC: '||x.HR_ABERTURA);
        DBMS_OUTPUT.PUT_LINE('Tipo do SAC: '||x.TIPO_SAC);
        DBMS_OUTPUT.PUT_LINE('Código do produto: '||x.COD_PROD);
        DBMS_OUTPUT.PUT_LINE('Nome do produto: '||x.DESC_PROD);
        DBMS_OUTPUT.PUT_LINE('Valor unitário: R$ '||x.VALOR_UN);
        DBMS_OUTPUT.PUT_LINE('Percentual de lucro: '||x.PERC_LUCRO||'%');
        DBMS_OUTPUT.PUT_LINE('Número do cliente: '||x.NR_CLIENTE);
        DBMS_OUTPUT.PUT_LINE('Nome do cliente: '||x.NOME_CLIENTE);
        DBMS_OUTPUT.PUT_LINE('-----');
    END LOOP;
END;
/






