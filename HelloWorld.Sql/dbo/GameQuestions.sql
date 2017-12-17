CREATE TABLE [dbo].[GameQuestions]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [QuestionId1] INT NOT NULL, 
    [QuestionId2] INT NOT NULL, 
    [QuestionId3] INT NOT NULL, 
    [QuestionId4] INT NOT NULL, 
    [QuestionId5] INT NOT NULL, 
    [QuestionId6] INT NOT NULL, 
    [DateCreated] DATETIME NOT NULL,
	CONSTRAINT [FK_GameQuestions_QuestionId1] FOREIGN KEY (QuestionId1) REFERENCES [dbo].[Question]([Id]),
	CONSTRAINT [FK_GameQuestions_QuestionId2] FOREIGN KEY (QuestionId2) REFERENCES [dbo].[Question]([Id]),
	CONSTRAINT [FK_GameQuestions_QuestionId3] FOREIGN KEY (QuestionId3) REFERENCES [dbo].[Question]([Id]),
	CONSTRAINT [FK_GameQuestions_QuestionId4] FOREIGN KEY (QuestionId4) REFERENCES [dbo].[Question]([Id]),
	CONSTRAINT [FK_GameQuestions_QuestionId5] FOREIGN KEY (QuestionId5) REFERENCES [dbo].[Question]([Id]),
	CONSTRAINT [FK_GameQuestions_QuestionId6] FOREIGN KEY (QuestionId6) REFERENCES [dbo].[Question]([Id]),

)
