-- Creating View Calendar
CREATE or ALTER VIEW gold.calendar
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
) as query1;

-- Creating View Customers
CREATE or alter VIEW gold.customers
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
) as query2;

-- Creating View Returns
CREATE or ALTER VIEW gold.returns
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
) as query3;

-- Creating View Sales
CREATE or ALTER VIEW gold.sales
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
) as query5;

-- Creating View SubCategories
CREATE or ALTER VIEW gold.subcat
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'PARQUET'
) as query6;

-- Creating View Territories
CREATE or ALTER VIEW gold.territories
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
) as query7;




-- Creating View Products
CREATE or ALTER VIEW gold.products
as
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectdatalakeuk.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
) as query4;











