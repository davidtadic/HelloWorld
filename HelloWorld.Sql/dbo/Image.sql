﻿CREATE TABLE [dbo].[Image]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [Thumbnail] NVARCHAR(MAX) NOT NULL, 
    [DateCreated] DATETIME NOT NULL
)
