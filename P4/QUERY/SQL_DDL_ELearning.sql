--Creating ELearning DataBase.
CREATE DATABASE [ELearning];

GO
--Using the ELearning Database.
USE [ELearning];

GO
--Table USER_ACCOUNT
CREATE TABLE [USER_ACCOUNT](
    [AccountId]          int     identity(1000000,1)   NOT NULL  PRIMARY KEY,
    [AccountUsername]    varchar(100)    NOT NULL,
    [AccountPassword]    varchar(100)    NOT NULL,
    [FirstName]          varchar(100)    NOT NULL,
    [LastName]           varchar(100)    NULL,
    [EmailId]            varchar(100)    NOT NULL,
    [ContactNo]          bigint          NOT NULL,
    [CreatedOn]          datetime        NOT NULL,
    [AccountType]        varchar(20)     CONSTRAINT CHK_ACCT_TYPE CHECK(AccountType IN ('ADMIN','LEARNER','INSTRUCTOR')),	
)

GO

CREATE UNIQUE INDEX [USER_ACCOUNT_INDEX]
ON [USER_ACCOUNT]([AccountId]);

GO
--Table For USER PASSWORD ENCRYPTED.
CREATE TABLE [USER_ACCOUNT_ENCRYPTED](
    [AccountId]          int     identity(1000000,1)   NOT NULL  PRIMARY KEY,
    [AccountUsername]    varchar(100)    NOT NULL,
    [EncryptedPassword]    varbinary(400)    NOT NULL,
    [FirstName]          varchar(100)    NOT NULL,
    [LastName]           varchar(100)    NULL,
    [EmailId]            varchar(100)    NOT NULL,
    [ContactNo]          bigint          NOT NULL,
    [CreatedOn]          datetime        NOT NULL,
    [AccountType]        varchar(20)     NOT NULL,	
)

GO
--Table ADMIN
CREATE TABLE [ADMIN](
    [AdminId]      int             NOT NULL,
    [AdminRole]    varchar(100)    NULL,
    PRIMARY KEY ([AdminId]),
	CONSTRAINT [FK_ADMIN_USER_ACCOUNT] FOREIGN KEY([AdminId]) REFERENCES [USER_ACCOUNT] ([AccountId])
)

GO
--Table INSTRUCTOR
CREATE TABLE [INSTRUCTOR](
    [InstructorId]    int             NOT NULL,
    [University]      varchar(100)    NULL,
    [FieldOfStudy]    varchar(100)    NULL,
    PRIMARY KEY ([InstructorId]),
	CONSTRAINT [FK_INSTRUCTOR_USER_ACCOUNT] FOREIGN KEY([InstructorId]) REFERENCES [USER_ACCOUNT] ([AccountId])
)

GO
--Table LEARNER
CREATE TABLE [LEARNER](
    [LearnerId]     int             NOT NULL,
    [Occupation]    varchar(100)    NULL,
    PRIMARY KEY ([LearnerId]),
	CONSTRAINT [FK_LEARNER_USER_ACCOUNT] FOREIGN KEY([LearnerId]) REFERENCES [USER_ACCOUNT] ([AccountId])
)

GO

--Table COURSE
CREATE TABLE [COURSE](
    [CourseId]        varchar(50)     NOT NULL,
    [CourseName]      varchar(100)    NOT NULL,
    [CourseFees]      int             NULL,
    [InstructorId]    int             NOT NULL,
    PRIMARY KEY ([CourseId]),
	CONSTRAINT [FK_COURSE_INSTRUCTOR] FOREIGN KEY([InstructorId]) REFERENCES [INSTRUCTOR] ([InstructorId])
)

GO

--Table CONTENT
CREATE TABLE [CONTENT](
    [ContentId]   varchar(50)     NOT NULL,
    [Description]    varchar(300)    NOT NULL,
    [CourseId]       varchar(50)     NOT NULL,
    PRIMARY KEY ([ContentId]),
	CONSTRAINT [FK_CONTENT_COURSE] FOREIGN KEY([CourseId]) REFERENCES [COURSE] ([CourseId])
)

GO

--Table QUIZ
CREATE TABLE [QUIZ](
    [QuizId]                 int            NOT NULL,
    [QuizTime]               int            NOT NULL,
    [Attempts]               int            NOT NULL,
    [TotalMarks]             int            CONSTRAINT CHK_TOTAL_MARKS CHECK(50 >= [TotalMarks] and [TotalMarks] > 0),
    [MinimumPassingMarks]    int            CONSTRAINT CHK_MIN_PASSING CHECK(50 > [MinimumPassingMarks] and [MinimumPassingMarks] > 0),
    [ContentId]           varchar(50)    NOT NULL,
    PRIMARY KEY ([QuizId]),
	CONSTRAINT [FK_QUIZ_CONTENT] FOREIGN KEY([ContentId]) REFERENCES [CONTENT] ([ContentId])
)

GO

--Table REGISTRATION
CREATE TABLE [REGISTRATION](
    [RegistrationId]      int    identity(5000,1)        NOT NULL,
    [RegistrationDate]    date           NOT NULL,
    [CourseId]            varchar(50)    NOT NULL,
    [LearnerId]           int            NOT NULL,
    PRIMARY KEY ([RegistrationId]),
	CONSTRAINT [FK_REGISTRATION_COURSE] FOREIGN KEY([CourseId]) REFERENCES [COURSE] ([CourseId]),
	CONSTRAINT [FK_REGISTRATION_LEARNER] FOREIGN KEY([LearnerId]) REFERENCES [LEARNER] ([LearnerId])
)

GO

CREATE UNIQUE INDEX [REGISTRATION_INDEX]
ON [REGISTRATION]([RegistrationId]);

GO

--Table INVOICE
CREATE TABLE [INVOICE](
    [InvoiceId]         int     identity(3000,1)       NOT NULL,
    [PaymentMode]       varchar(10)    NULL,
    [Date]              date           NOT NULL,
    [Status]            char(9)        NOT NULL,
    [RegistrationId]    int            NOT NULL,
    PRIMARY KEY ([InvoiceId]),
	CONSTRAINT [FK_INVOICE_REGISTRATION] FOREIGN KEY([RegistrationId]) REFERENCES [REGISTRATION] ([RegistrationId])
)

GO

--Table QUIZ_TAKEN
CREATE TABLE [QUIZ_TAKEN](
    [QuizTakenId]      int  identity(1,1)   NOT NULL,
	[QuizId]           int     NOT NULL,
	[LearnerId]        int     NOT NULL,
    [QuizTakeDate]    date    NOT NULL,
    [MarksObtained]    int     NOT NULL,
    PRIMARY KEY ([QuizTakenId]),
	CONSTRAINT [FK_QUIZ_TAKEN_QUIZ] FOREIGN KEY([QuizId]) REFERENCES [QUIZ] ([QuizId]),
	CONSTRAINT [FK_QUIZ_TAKEN_LEARNER] FOREIGN KEY([LearnerId]) REFERENCES [LEARNER] ([LearnerId])
)

GO

--Table CERTIFICATE
CREATE TABLE [CERTIFICATE](
    [CertificateId]    int     identity(8000,1)       NOT NULL,
    [CompletedOn]      datetime       NOT NULL,
    [CourseId]         varchar(50)    NOT NULL,
    [LearnerId]        int            NOT NULL,
    PRIMARY KEY([CertificateId]),
	CONSTRAINT [FK_CERTIFICATE_COURSE] FOREIGN KEY([CourseId]) REFERENCES [COURSE] ([CourseId]),
	CONSTRAINT [FK_CERTIFICATE_LEARNER] FOREIGN KEY([LearnerId]) REFERENCES [LEARNER] ([LearnerId])
)

CREATE UNIQUE INDEX [CERTIFICATE_INDEX]
ON [CERTIFICATE]([CertificateId]);

GO

--Table COURSE_RATING
CREATE TABLE [COURSE_RATING](
	[RateId]     int     identity(1,1)     NOT NULL,
	[LearnerId]    int            NOT NULL,
    [CourseId]     varchar(50)    NOT NULL,
	[RateDate]     date           NOT NULL,
    [Rating]       int            CONSTRAINT CHK_RATING CHECK(5 >= [Rating] and [Rating] > 0),
    PRIMARY KEY ([RateId]),
	CONSTRAINT [FK_COURSE_RATING_LEARNER] FOREIGN KEY([LearnerId]) REFERENCES [LEARNER] ([LearnerId]),
	CONSTRAINT [FK_COURSE_RATING_COURSE] FOREIGN KEY([CourseId]) REFERENCES [COURSE] ([CourseId])
)

GO

--Table for AUDITING Contact Number Updation
CREATE TABLE [USER_ACCOUNT_AUDIT]
(
[Account_Id] int NOT NULL,
[Old_ContactNo] bigint NOT NULL,
[New_ContactNo] bigint NOT NULL
CONSTRAINT [FK_USER_ACCOUNT_AUDIT_USER_ACCOUNT] FOREIGN KEY([Account_Id]) REFERENCES [USER_ACCOUNT] ([AccountId])
)
GO

--After creating all the tables Run the below Encryption Part in the given steps:
-------------------FOR ENCRYPTION-----------------------------

--For Encryption please run in the following Steps:
--Step 1 :Run below commands:
create MASTER KEY
ENCRYPTION BY PASSWORD = 'DAMGTeam14^';

CREATE CERTIFICATE AccountPass  
   WITH SUBJECT = 'Account Password';  
GO  

CREATE SYMMETRIC KEY AccountPass_SM 
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE AccountPass;  
GO  
--Step 2: Run Below command:
OPEN SYMMETRIC KEY AccountPass_SM  
   DECRYPTION BY CERTIFICATE AccountPass;

--Step 3: Run below command and create a  UDF
----UDF for ENCRYPTING---------------
create function ENCRYPT_PASSWORD
(
	@pwd varchar(100)
)
returns varbinary(400)
as
begin
	declare @encryptedPassword varbinary(400)
	set @encryptedPassword = EncryptByKey(Key_GUID('AccountPass_SM'),  convert(varbinary, @pwd))
	return @encryptedPassword
end
go

--Step 4: Run below command and create a UDF
-----UDF for DECRYPTING--------------
create function DECRYPT_PASSWORD
(
	@encryptpwd varbinary(400)
)
returns varchar(100)
as
begin
	declare @decryptedPassword varchar(100)
	set @decryptedPassword = CONVERT(varchar, DecryptByKey(@encryptpwd))
	return @decryptedPassword
end
go

--Step 5: Run below command
CLOSE SYMMETRIC KEY AccountPass_SM;

GO
----------------------------------------------------------------------------------------------
----------------UDF for getting Admin Role -----------------------------------------

CREATE FUNCTION [AD_Role](@Admin_Id int)
RETURNS varchar(100)
AS
BEGIN
	DECLARE @res varchar(100)
	IF exists (SELECT AdminId FROM [ADMIN] WHERE [AdminId] = @Admin_Id)
	BEGIN

		SET @res = (SELECT AdminRole FROM [ADMIN] WHERE [AdminId] = @Admin_Id)
		END

	Return @res

END
GO


-------------------TRIGGERS-----------------------------------

--Trigger to Encrypt user password and added User in USER_ACCOUNT_ENCRYPTED Table 
CREATE TRIGGER [INSERT_USER_AND_ENCRYPT] 
ON USER_ACCOUNT
AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;
	OPEN SYMMETRIC KEY AccountPass_SM  
	   DECRYPTION BY CERTIFICATE AccountPass;

	INSERT INTO [dbo].[USER_ACCOUNT_ENCRYPTED]
			   ([AccountUsername]
			   ,[EncryptedPassword]
			   ,[FirstName]
			   ,[LastName]
			   ,[EmailId]
			   ,[ContactNo]
			   ,[CreatedOn]
			   ,[AccountType])
     
		 SELECT
		 i.AccountUsername,
		 dbo.ENCRYPT_PASSWORD(i.AccountPassword),
		 i.FirstName,
		 i.LastName,
		 i.EmailId,
		 i.ContactNo,
		 i.CreatedOn,
		 i.AccountType
		 FROM
			inserted i


	CLOSE SYMMETRIC KEY AccountPass_SM;
END

GO

------Trigger for when contact number is updated

Create TRIGGER [UPDATE_USER_ACCOUNT_CONTACT] ON [USER_ACCOUNT]
After UPDATE
AS
BEGIN

	SET NOCOUNT ON;
	DECLARE @ID INT, @NewContactNo BIGINT, @OldContactNo BIGINT

	Select @ID = i.AccountId from inserted i

	Select * into #TempTable from inserted

	Select Top 1 @NewContactNo = ContactNo from #TempTable

	Select @OldContactNo = ContactNo from deleted where AccountId = @ID


	IF UPDATE(ContactNo)
		INSERT INTO [USER_ACCOUNT_AUDIT]
		VALUES(@ID, @OldContactNo,@NewContactNo)


END
GO

-----------------STORED PROCEDURE-----------------------
--Stored Procedure to INSERT USER
CREATE PROCEDURE [INSERT_USER] 

@Account_Username varchar(100),
@Account_Password varchar(100),
@First_Name varchar(100),
@Last_Name varchar(100),
@Email_Id varchar(100),
@Contact_No bigint,
@Created_On datetime,
@Account_Type varchar(20)

AS
BEGIN
	INSERT INTO [dbo].[USER_ACCOUNT]
	(
	  AccountUsername,
	  AccountPassword,
	  FirstName,
	  LastName,
	  EmailId,
	  ContactNo,
	  CreatedOn,
	  AccountType
	)
	VALUES
	( 
	    @Account_Username,
		@Account_Password,
		@First_Name,
		@Last_Name,
		@Email_Id,
		@Contact_No,
		@Created_On,
		@Account_Type
	)
END
GO


----Find the Max Score obtained given the QuizId

CREATE PROCEDURE [FIND_MAX_SCORE] @Quiz_id INT
AS
BEGIN

	SELECT Q.QuizId, QT.MarksObtained, QT.LearnerId
	FROM [QUIZ] AS Q
	JOIN [QUIZ_TAKEN] AS QT
	ON Q.QuizId = Q.QuizId  
	WHERE Q.QuizId = @Quiz_id and QT.MarksObtained in
	(
		SELECT MAX(QTK.MarksObtained)
		FROM [QUIZ] AS QZ
		JOIN [QUIZ_TAKEN] AS QTK
		ON QZ.QuizId = QTK.QuizId and QTK.QuizId = @Quiz_id
	)

END
GO

--Stored Procedure for Given the Instructor get the Course and Learner details.

CREATE PROCEDURE [FIND_LEARNER] @Instructor_id INT
AS
BEGIN
	SELECT CO.InstructorId, CO.CourseId, RGTR.LearnerId, UA.FirstName, UA.LastName
	FROM 
	(
		COURSE CO
		JOIN REGISTRATION AS RGTR 
		ON CO.CourseId = RGTR.CourseId and CO.InstructorId = @Instructor_id
	)
	JOIN USER_ACCOUNT AS UA 
	ON RGTR.LearnerId = UA.AccountId
	ORDER BY CourseId ASC
END
GO

--Stored Procedure for Getting Registration Details of a Learner

CREATE procedure [GET_REGISTRATION_DETAILS] @leaner_id INT
AS
BEGIN
SELECT RegistrationId, LearnerId, CourseId FROM [REGISTRATION]
WHERE LearnerId = @leaner_id     
END
GO

--Check whether given the LearnerId if Learner hs unpass a Quiz

CREATE PROCEDURE [CHECK_UNQUALIFIED] @leaner_id INT
AS
BEGIN
	SELECT QT.LearnerId, QT.QuizId, QT.MarksObtained, Q.TotalMarks, Q.MinimumPassingMarks
	FROM  [QUIZ] Q, [QUIZ_TAKEN] QT
	WHERE QT.LearnerId = @leaner_id AND QT.QuizId = Q.QuizId AND Q.MinimumPassingMarks > QT.MarksObtained
	GROUP BY  QT.LearnerId, QT.QuizId, QT.MarksObtained, Q.TotalMarks, Q.MinimumPassingMarks
END
GO


-----------------------------VIEWS---------------------------------------


-- VIEW the top 3 students performed in the quiz for each contents or any specific content
CREATE VIEW [TOP3LEARNER]
AS 
SELECT [ContentId], [LearnerId], [Ranking]
FROM
(
    SELECT Q.ContentId, QT.LearnerId,
    ROW_NUMBER() OVER (PARTITION BY q.ContentId ORDER BY Q.ContentId, MAX(QT.MarksObtained) DESC, MIN(QT.MarksObtained) DESC, QT.LearnerId DESC) AS Ranking
    FROM QUIZ_TAKEN QT JOIN QUIZ Q
    ON Q.QuizId = QT.QuizId
    GROUP BY Q.ContentId, QT.LearnerId
)ranktable
WHERE Ranking <= 3
GO

-- View the average rating of all courses
CREATE VIEW [AVG_RATE]
AS 
SELECT CO.CourseName, CR.CourseId, UA.FirstName, UA.LastName,  AVG(CR.Rating) as AvgRate
FROM [COURSE_RATING]  CR, [COURSE] CO, USER_ACCOUNT UA
WHERE CR.CourseId = CO.CourseId AND CO.InstructorId = UA.AccountId
GROUP BY CO.CourseName, CR.CourseId, UA.FirstName, UA.LastName
GO


-- View the Number of Registration and Number of Certificate completed for that Course
CREATE VIEW [NUMBER_CER_REG]
as 
SELECT RGTR.CourseId, Count(DISTINCT RGTR.RegistrationId) as Number_Of_Registration, Count(DISTINCT CER.CertificateId) as Number_Of_Certificate_Completed
from [CERTIFICATE] CER, [REGISTRATION] RGTR
WHERE RGTR.CourseId = CER.CourseId
GROUP by RGTR.CourseId
GO


--View the Number of contents for the Course
CREATE VIEW [NUM_CONTENTS]
AS 
SELECT CO.CourseId, CO.CourseName, COUNT(CT.ContentId) AS Number_Of_Content
FROM [CONTENT] CT, [COURSE] CO
WHERE CT.CourseId = CO.CourseId
GROUP BY CO.CourseId, CO.CourseName
GO

--------------------------
