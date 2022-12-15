-- Databricks notebook source
SELECT *,
       
       CASE
         WHEN descUF = 'SP' THEN 'paulista'
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade
       
FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
       
       -- isso aqui é uma coluna nova
       CASE
         WHEN descUF = 'SP' THEN 'paulista'
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade,
       
       -- isso aqui é outra coluna nova!!
       CASE
         WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
         ELSE 'Não tem são no nome'
       END AS descCidadeSao
       
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
       CASE
         WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
       END AS descRegiao

FROM silver_olist.vendedor