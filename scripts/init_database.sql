/*
=======================================================
Criando o Banco de Dados e Esquemas
=======================================================

Propósito do script:
  Este script cria um novo banco de dados chamado 'Data Warehouse' após verificar se ele já existe.
  Se o banco de dados existir, ele será descartado e recriado. Além disso, o script configura três esquemas no banco de dados: ‘bronze’, ‘silver’ e ‘gold’.

AVISO:
  A execução deste script eliminará todo o banco de dados 'DataWarehouse', se existir.
  Todos os dados do banco de dados serão excluídos permanentemente. Prossiga com o cuidado
  e certifique-se de ter backups adequados antes de executar este script.
*/

USE master;
GO

-- Eliminando e recriando o banco de dados 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Criando o banco de dados 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE Datawarehouse;
GO

-- Criando os esquemas 
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
