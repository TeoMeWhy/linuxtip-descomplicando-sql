-- Databricks notebook source
SELECT descUF,
       COUNT(idVendedor) AS qtVendedorUF

FROM silver_olist.vendedor

WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')

GROUP BY descUF

HAVING qtVendedorUF >= 100

ORDER BY qtVendedorUF DESC
