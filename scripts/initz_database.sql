/* 
====================================================================================
Create Database and Schemas
====================================================================================
Script Purpose:
  This script create a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 
    bronze
    siler 
    gold
*/


-- Drop and recreate the 'DtatWarehouse' database
IF EXIS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USR WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;

----Create Database 'Data Warehouse'--

CREATE DATABASE DataWarehouse;

USE DataWarehouse

  
---Create SCHEMA
CREATE SCHEMA bronze;
GO 
CREATE SCHEMA sliver;
GO
CREATE SCHEMA gold;
GO
