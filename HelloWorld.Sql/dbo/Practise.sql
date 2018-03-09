CREATE TABLE [dbo].[Practise]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [Category] INT NOT NULL, 
    [UserId] INT NOT NULL, 
    [Points] INT NOT NULL, 
    [DatePlayed] DATETIME NOT NULL,
	CONSTRAINT [FK_Practise_User] FOREIGN KEY (UserId) REFERENCES [dbo].[User]([Id])
)
