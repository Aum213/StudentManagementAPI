IF DB_ID('StudentAPI') IS NULL
    CREATE DATABASE StudentAPI;
GO

USE StudentAPI;
GO

IF OBJECT_ID('dbo.Students', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Students
    (
        Id     INT IDENTITY(1,1) PRIMARY KEY,
        Name   NVARCHAR(100) NOT NULL,
        Email  NVARCHAR(150) NOT NULL,
        Course NVARCHAR(100) NOT NULL
    );
END
GO