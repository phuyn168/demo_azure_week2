-- Databricks notebook source
DROP TABLE IF EXISTS diamonds2;

CREATE TABLE diamonds2
USING csv
OPTIONS (path "/databricks-datasets/Rdatasets/data-001/csv/ggplot2/diamonds.csv", header "true")

-- COMMAND ----------

SELECT color, avg(price) AS price FROM diamonds GROUP BY color ORDER BY color
