CREATE TABLE [dbo].[Game]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [FirstPlayerId] INT NOT NULL, 
    [SecondPlayerId] INT NOT NULL, 
    [FirstPlayerPoints] INT NOT NULL, 
    [SecondPlayerPoints] INT NOT NULL, 
    [GameQuestionsId] INT NOT NULL, 
    [DatePlayed] DATETIME NOT NULL, 
    [FirstPlayerAnswer] NVARCHAR(50) NULL, 
    [SecondPlayerAnswer] NVARCHAR(50) NULL,
	CONSTRAINT [FK_Game_FirstPlayerId] FOREIGN KEY (FirstPlayerId) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_Game_SecondPlayerId] FOREIGN KEY (SecondPlayerId) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_Game_GameQuestions] FOREIGN KEY (GameQuestionsId) REFERENCES [dbo].[GameQuestions]([Id])

)
