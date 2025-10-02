/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'RetailSalesAnalyticsProject' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, this script creates a schema called sales
	
WARNING:
    Running this script will drop the entire 'RetailSalesAnalyticsProject' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'RetailSalesAnalyticsProject' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'RetailSalesAnalyticsProject')
BEGIN
    ALTER DATABASE RetailSalesAnalyticsProject SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE RetailSalesAnalyticsProject;
END;
GO

-- Create the 'RetailSalesAnalyticsProject' database
CREATE DATABASE RetailSalesAnalyticsProject;
GO

USE RetailSalesAnalyticsProject;
GO

-- Create Schemas

CREATE SCHEMA sales;
GO

CREATE TABLE sales.dim_customers(
	customer_key int,
	customer_id int,
	customer_number nvarchar(50),
	first_name nvarchar(50),
	last_name nvarchar(50),
	country nvarchar(50),
	marital_status nvarchar(50),
	gender nvarchar(50),
	birthdate date,
	create_date date
);
GO

CREATE TABLE sales.dim_products(
	product_key int ,
	product_id int ,
	product_number nvarchar(50) ,
	product_name nvarchar(50) ,
	category_id nvarchar(50) ,
	category nvarchar(50) ,
	subcategory nvarchar(50) ,
	maintenance nvarchar(50) ,
	cost int,
	product_line nvarchar(50),
	start_date date 
);
GO

CREATE TABLE sales.fact_sales(
	order_number nvarchar(50),
	product_key int,
	customer_key int,
	order_date date,
	shipping_date date,
	due_date date,
	sales_amount int,
	quantity tinyint,
	price int 
);
GO

TRUNCATE TABLE sales.dim_customers;
GO

BULK INSERT sales.dim_customers
FROM 'D:\DataAnalystProjects\Sql Data Analytics Project\datasets\csv-files\sales.dim_customers.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO

TRUNCATE TABLE sales.dim_products;
GO

BULK INSERT sales.dim_products
FROM 'D:\DataAnalystProjects\Sql Data Analytics Project\datasets\csv-files\sales.dim_products.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO

TRUNCATE TABLE sales.fact_sales;
GO

BULK INSERT sales.fact_sales
FROM 'D:\DataAnalystProjects\Sql Data Analytics Project\datasets\csv-files\sales.fact_sales.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO
