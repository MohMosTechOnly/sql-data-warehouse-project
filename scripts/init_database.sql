/*
=====================================================================================================
Create Database and Schemas
=====================================================================================================
Script Purpose:
    This script creates a new database named 'Datawarehouse' after checking if it already exists.
    if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the datbase: 'bronze', 'silver', and 'gold'.
WARNING:
    Running this script will drop the entire 'DataWarehouse' database 

if it exists.
    All data in the database will be permenently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' databse
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABSE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABSE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
