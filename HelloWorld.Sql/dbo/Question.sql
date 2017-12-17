CREATE TABLE [dbo].[Question]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [QuestionName] NVARCHAR(MAX) NOT NULL, 
    [CorrectAnswer] NVARCHAR(50) NOT NULL, 
    [WrongAnswer1] NVARCHAR(50) NOT NULL, 
    [WrongAnswer2] NVARCHAR(50) NOT NULL, 
    [WrongAnswer3] NVARCHAR(50) NOT NULL, 
    [CategoryId] INT NOT NULL, 
    [ImageId] INT NULL,
	[DateCreated] DATETIME NOT NULL, 
    CONSTRAINT [FK_Question_CategoryId] FOREIGN KEY (CategoryId) REFERENCES [dbo].[Category]([Id]),
	CONSTRAINT [FK_Question_ImageId] FOREIGN KEY (ImageId) REFERENCES [dbo].[Image]([Id])

)
