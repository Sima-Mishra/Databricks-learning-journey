SHOW TABLES;

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;

SHOW SCHEMAS;

CREATE TABLE bronze.customer_transactions AS
SELECT * FROM customer_transactions;

CREATE TABLE silver.customer_transactions AS
SELECT * FROM silver_customer_transactions;

CREATE TABLE gold.customer_summary AS
SELECT * FROM gold_customer_summary;

SHOW TABLES IN bronze;
SHOW TABLES IN silver;
SHOW TABLES IN gold;

DESCRIBE EXTENDED gold.customer_summary;

CREATE VIEW gold.customer_summary_public AS
SELECT
  country,
  total_customers,
  avg_income
FROM gold.customer_summary;

SELECT * FROM gold.customer_summary_public;