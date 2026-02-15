--Creating Master Key
Create MASTER KEY ENCRYPTION BY PASSWORD = 'Utsav@123'

--Creating the Credential
CREATE DATABASE SCOPED CREDENTIAL MyCredential
WITH
    IDENTITY = 'Managed Identity'

--External Data Source for Fetching the Data From DataLake
CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://azureprojectdatalakeuk.dfs.core.windows.net/gold',
    CREDENTIAL = MyCredential
);


--Create an external file format for PARQUET files.
CREATE EXTERNAL FILE FORMAT file_parquet
WITH (
         FORMAT_TYPE = PARQUET,
         DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

--External Tables using CETAS
CREATE EXTERNAL TABLE gold.calendarTab
WITH(
    LOCATION='Calendar',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.calendar

--Customer
CREATE EXTERNAL TABLE gold.customersTab
WITH(
    LOCATION='Customers',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.customers

--Products
CREATE EXTERNAL TABLE gold.productsTab
WITH(
    LOCATION='Products',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.products

--Returns
CREATE EXTERNAL TABLE gold.returnsTab
WITH(
    LOCATION='Returns',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.returns

--Sales
CREATE EXTERNAL TABLE gold.salesTab
WITH(
    LOCATION='Sales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.sales

-- Territorries
CREATE EXTERNAL TABLE gold.territoriesTab
WITH(
    LOCATION='Territories',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.territories

--Subcategories
CREATE EXTERNAL TABLE gold.subcatTab
WITH(
    LOCATION='Subcategories',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=file_parquet
)
AS
SELECT * from gold.subcat

