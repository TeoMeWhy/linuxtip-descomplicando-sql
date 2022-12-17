-- Databricks notebook source
SELECT T1.*,
       T2.descUF

FROM silver_olist.pedido AS T1

LEFT JOIN silver_olist.cliente AS T2
ON T1.idCliente = T2.idCliente
