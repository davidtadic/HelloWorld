CREATE TABLE [dbo].[User]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Username] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(MAX) NOT NULL, 
    [Admin] BIT NOT NULL DEFAULT 0, 
    [DateCreated] DATETIME NOT NULL,
	[Image] INT NOT NULL
)
