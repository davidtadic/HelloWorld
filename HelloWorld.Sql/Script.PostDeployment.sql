﻿/*
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
INSERT INTO [dbo].[User] ([FirstName], [LastName], [Email], [Username], [Password], [Admin], [DateCreated])
VALUES ('Admin', 'Admin', 'admin@admin.com', 'admin', '1000:FXMoIA0wymej0wLaHDAJWa1s++wEKyRv:lDEhKsKKHubQeLpts+vb9wMTD4YZa5PX', 1, GETDATE())