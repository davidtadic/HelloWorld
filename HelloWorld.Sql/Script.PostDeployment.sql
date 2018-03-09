/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
--INSERT INTO [dbo].[User] ([FirstName], [LastName], [Email], [Username], [Password], [Admin], [DateCreated])
--VALUES ('Admin', 'Admin', 'admin@admin.com', 'admin', '1000:FXMoIA0wymej0wLaHDAJWa1s++wEKyRv:lDEhKsKKHubQeLpts+vb9wMTD4YZa5PX', 1, GETDATE())



--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What is the standard port number used by web servers?', '80', '8000', '8080', '8888', 0, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which HTTP verb does not map well to a CRUD operation?', 'HEAD', 'POST', 'GET', 'DELETE', 0, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What does URI stand for?', 'Uniform Resource Identifier', 'Unique Resource Identifier', 'Universal Resource Locator', 'Ubiquitous Resource Identifier', 0, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What is the standard port number used by secure web servers (HTTPS)?', '443', '80', '8080', '8000', 0, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which website offers free validation of your HTML code?', 'validator.w3.org', 'facebook.com', 'github.com', 'tiwtter.com', 0, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which file is used as a web sites bookmark icon in browsers?', 'favicon.ico', 'favicon.bmp', 'bookmark.png', 'icon.png', 0, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Who generates the HTTP 404 File not found error?', 'The web server', 'The client operating system', 'The router between client and server', 'The client browser', 0, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which is not a standard attribute of HTTP cookie parameters?', 'Date', 'Path', 'Domain', 'Expires', 0, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What marks the end of an HTTP header?', 'empty line', '</head>', 'Content-type: text/html', '.', 0, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('In web programming, what is the QUERY_STRING?', 'The part of the URL after the "?" mark', 'A feature request', 'A variable in a HTTP GET request', 'The part of the URL after the "#" mark', 0, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Where are HTTP cookies stored?', 'On the client', 'On the web server', 'On the top shelf', 'On the web server', 0, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What does CGI stand for in web programming?', 'Common Gateway Interface', 'Computer Graphics Interface', 'Computer Generated Imagery', 'Computer Guided Infidel', 0, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What was the limit of the header size in the HTTP/1.0 standard?', 'Unspecified (no limit)', '1024 bytes', '8190 bytes', '512 bytes', 0, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which server response is not part of the HTTP standard?', '404 Internal Server Error', '401 Unauthorized', '418 I am a teapot', '400 Bad Request', 0, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which type of error is indicated by a 4xx class of HTTP status code?', 'Client error', 'Server Error', 'Connection Error', 'Application Error', 0, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What can you do with HTTP POST that you cannot do with HTTP GET?', 'Upload files', 'Implement session state', 'Pass multiple variables to a form', 'Create cookies', 0, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What was the limit of the header size in the HTTP/1.0 standard?', 'Unspecified (no limit)', '1024 bytes', '8190 bytes', '512 bytes', 0, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which HTTP method was not part of the HTTP/1.0 specification?', 'OPTIONS', 'POST', 'HEAD', 'GET', 0, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How to find all employees whose name is Smith?', 'SELECT * FROM Employee WHERE Name= ''Smith''?', 'SELECT * FROM Employee WHERE Name IS "Smith"?', 'SELECT * FROM Employee WHERE Name== "Smith"?', 'SELECT * FROM Employee WHERE Name="Smith"?', 1, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What dose SQL stand for?', 'Structured Query Language', 'Simple Query Language', 'Signal Query Language', 'Standard Query Language', 1, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('In relation of data base, what is the term for minimizing redundancy and dependency?', 'Normalization', 'Denormalization', 'Truncation', 'Optimization', 1, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which is not a common SQL command?', 'FIND', 'SELECT', 'INSERT', 'DELETE', 1, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How to count the number of cars in the Vehicle table?', 'SELECT count(*) FROM Vehicle', 'SELECT * FROM Vehicle', 'SELECT car FROM Vehicle', 'SELECT count FROM Vehicle', 1, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How to find all employees wiht NULL as email address?', 'SELECT * FROM Employee WHERE Email IS NULL', 'SELECT * FROM Employee WHERE Email = NULL', 'SELECT * FROM Employee WHERE Email == ''NULL''', 'SELECT * FROM Employee WHERE Email = ''NULL''', 1, NULL, 2018-02-11, 0)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How many records will match this query if there are 5 records in Employee and 3 records in Department: SELECT * FROM Employee e LEFT JOIN Department d ON e.DepartmentID = d.DepartmentID?', '5 or more', '15', '3 or more', 'It depends', 1, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What type of JOIN is this: SELECT * FROM t1 JOIN t2 ON t1.id = t2.id?', 'INNER JOIN', 'OUTER JOIN', 'CROSS JOIN', 'LEFT JOIN', 1, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('In SQL, what is the differnce between UNION and UNION ALL?', 'UNION ALL may return duplicate records', 'UNION ALL is incorrect syntax', 'They are the same, ALL is optional', 'UNION is incorrenct syntax', 1, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('In SQL, which from of count() might be invalid?', 'count(DepartmentID)', 'count(1)', 'count(*)', 'count(null)', 1, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What is the advantage of storing data in database instead of a CSV file?', 'Columns can be indexed', 'Finding records is always faster in a database', 'CVS file uses less disk storage', 'Using database is more professional', 1, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How to find employee with DepartentID set to NULL?', 'SELECT * FROM Employee WHERE DepartmetID IS NULL', 'SELECT * FROM Employee WHERE DepartmetID = NULL', 'SELECT * FROM Employee WHERE DepartmetID = 0', 'SELECT * FROM Employee WHERE DepartmetID EXISTS', 1, NULL, 2018-02-11, 1)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How to get the current data un Sybase?', 'SELECT GETDATE()', 'SELECT GETDATE', 'SELECT SYSDATE() FROM DUAL', 'SELECT SYSDATE FROM DUAL', 1, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('How to get the curent data in Oracle?', 'SELECT SYSDATE FORM DUAL', 'SELECT GETDATE()', 'SELECT GETDATE', 'SLELECT SYSDATE() FROM DUAL', 1, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which database system uses the commands: Isnrcti, isqlpuscti, emctl?', 'Oracle', 'PostgreSQL', 'MySQL', 'Sysbase', 1, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('In SQL, which from of count() might be invalid?', 'count(DepartmentID)', 'count(1)', 'count(*)', 'count(null)', 1, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What is the advantage of storing data in database instead of a CSV file?', 'Columns can be indexed', 'Finding records is always faster in a database', 'CVS file uses less disk storage', 'Using database is more professional', 1, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('What type of JOIN is this: SELECT * FROM t1 JOIN t2 ON t1.id = t2.id?', 'INNER JOIN', 'OUTER JOIN', 'CROSS JOIN', 'LEFT JOIN', 1, NULL, 2018-02-11, 2)

--INSERT INTO [dbo].[Question]([QuestionName], [CorrectAnswer], [WrongAnswer1], [WrongAnswer2], [WrongAnswer3], [Category], [ImageId], [DateCreated], [LevelQuestion])
--VALUES ('Which HTTP method was not part of the HTTP/1.0 specification?', 'OPTIONS', 'POST', 'HEAD', 'GET', 1, NULL, 2018-02-11, 2)